package com.odenktools.locationservice.controller;

import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import com.odenktools.locationservice.service.CountriesService;
import com.odenktools.locationservice.domain.Countries;

@RestController
public class LocationController {
	
	@Autowired
	private CountriesService countriesService;
	
	@RequestMapping(path = "/{name}", method = RequestMethod.GET)
	public Countries getCountriesByName(@PathVariable String name) {
		return countriesService.findCountriesByName(name);
	}

	@RequestMapping(path = "/all", method = RequestMethod.GET)
	public Iterable<Countries> getAllCountries() {
		return countriesService.findAllCountries();
	}
}
