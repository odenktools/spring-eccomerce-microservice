package com.odenktools.locationservice.service;

import com.odenktools.locationservice.domain.Countries;
import com.odenktools.locationservice.repository.CountriesRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.math.BigDecimal;
import java.util.Date;

@Service
public class CountriesServiceImpl implements CountriesService {

	private final Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private CountriesRepository repository;

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Countries findCountriesByName(String countryName) {
		Assert.hasLength(countryName);
		return repository.findCountriesByName(countryName);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Iterable<Countries> findAllCountries() {
		return repository.findAll();
	}
}