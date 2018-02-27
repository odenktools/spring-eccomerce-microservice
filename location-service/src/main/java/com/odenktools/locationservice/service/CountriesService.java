package com.odenktools.locationservice.service;

import com.odenktools.locationservice.domain.Countries;

public interface CountriesService {

	/**
	 * Finds Countries
	 *
	 * @return found Countries
	 */
	Iterable<Countries> findAllCountries();

	/**
	 * Finds Countries by given name
	 *
	 * @param countryName
	 * @return found Countries
	 */
	Countries findCountriesByName(String countryName);
}