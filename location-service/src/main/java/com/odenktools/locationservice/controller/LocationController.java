package com.odenktools.locationservice.controller;

import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.Errors;

import com.odenktools.locationservice.service.CountriesService;
import com.odenktools.locationservice.domain.Countries;
import com.odenktools.locationservice.service.RegionsService;
import com.odenktools.locationservice.domain.Regions;
import java.util.Calendar;
import org.json.JSONObject;

@RestController
public class LocationController {
	
	@Autowired
	private CountriesService countriesService;
	
	@Autowired
	private RegionsService regionsService;
	
	@RequestMapping(path = "/{name}", method = RequestMethod.GET)
	public Countries getCountriesByName(@PathVariable String name) {
		return countriesService.findCountriesByName(name);
	}

	@RequestMapping(path = "/all", method = RequestMethod.GET)
	public Iterable<Countries> getAllCountries() {
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

	@RequestMapping(value = "/country/create", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    ResponseEntity<?> saveCountry(@Valid @ModelAttribute Countries countries, Errors errors) {
    	if (errors.hasErrors()) {
        	return ResponseEntity.badRequest().body(errors.getAllErrors());
        }
    	countries.setCode("OIS");
    	countries.setActive(1);
    	countries.setName("hellooooo");
    	countries.setSlug("hellooooo");
    	countries.setCreatedAt(Calendar.getInstance());
    	JSONObject jsonObject = new JSONObject();
        jsonObject.put("messages", "Successfull saved");
    	return new ResponseEntity<String>(jsonObject.toString(), HttpStatus.CREATED);
    }
}
