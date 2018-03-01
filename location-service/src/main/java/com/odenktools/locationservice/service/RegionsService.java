package com.odenktools.locationservice.service;

import com.odenktools.locationservice.domain.Regions;

public interface RegionsService {

	/**
	 * Finds Countries
	 *
	 * @return found Countries
	 */
	Iterable<Regions> findAllRegions();

	/**
	 * Finds Countries by given name
	 *
	 * @param regionsName
	 * @return found Regions
	 */
	Iterable<Regions> findRegionsByName(String regionsName);
}