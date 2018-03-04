package com.odenktools.locationservice.controller;

import com.google.common.collect.Maps;
import com.odenktools.locationservice.domain.Countries;
import com.odenktools.locationservice.domain.Regions;
import com.odenktools.locationservice.service.CountriesService;
import com.odenktools.locationservice.service.RegionsService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.ws.rs.QueryParam;
import java.util.Map;

/**
 * Location Controller.
 *
 * @author odenktools
 */
@RestController
public class LocationController {

    @Autowired
    private CountriesService countriesService;

    @Autowired
    private RegionsService regionsService;

    @RequestMapping(path = "/country", method = RequestMethod.GET)
    public Countries getCountriesByName(@QueryParam("name") String name) {
        return countriesService.findByName(name);
    }

    @RequestMapping(path = "/country/all", method = RequestMethod.GET)
    public Iterable<Countries> getAllCountries(@RequestParam("page") int page, @RequestParam("size") int size) {
        return countriesService.findAllCountries();
    }

    @RequestMapping(path = "/regions/{name}", method = RequestMethod.GET)
    public Iterable<Regions> getRegionsByName(@PathVariable String name) {
        return regionsService.findRegionsByName(name.toLowerCase());
    }

    @RequestMapping(path = "/regions/all", method = RequestMethod.GET)
    public Iterable<Regions> getAllRegions() {
        return regionsService.findAllRegions();
    }

    @CrossOrigin(origins = "*")
    @RequestMapping(
            value = "/country/create",
            method = RequestMethod.POST,
            consumes = MediaType.APPLICATION_JSON_VALUE,
            produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    ResponseEntity<?> saveCountry(@Valid @RequestBody Countries country, final BindingResult errors) {
        if (errors.hasErrors()) {
            Map<ObjectError, Map<String, Object>> results = Maps.newHashMap();
            for (ObjectError error : errors.getAllErrors()) {
                Map<String, Object> violationMap = Maps.newHashMap();
                if (error instanceof FieldError) {
                    FieldError fe = (FieldError) error;
                    violationMap.put("field", fe.getField());
                    violationMap.put("message", fe.getDefaultMessage());
                    results.put(error, violationMap);
                }
            }
            return ResponseEntity.badRequest().body(results);
        }
        JSONObject jsonObject = new JSONObject();
        countriesService.create(country);
        jsonObject.put("messages", "Successfull saved");
        return new ResponseEntity<>(jsonObject.toString(), HttpStatus.CREATED);
    }
}
