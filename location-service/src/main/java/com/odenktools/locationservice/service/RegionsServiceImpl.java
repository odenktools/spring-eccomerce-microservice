package com.odenktools.locationservice.service;

import com.odenktools.locationservice.domain.Regions;
import com.odenktools.locationservice.repository.RegionsRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.math.BigDecimal;
import java.util.Date;

@Service
public class RegionsServiceImpl implements RegionsService {

	private final Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private RegionsRepository repository;

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Iterable<Regions> findRegionsByName(String regionsName) {
		Assert.hasLength(regionsName);
		return repository.findRegionsByName(regionsName);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Iterable<Regions> findAllRegions() {
		return repository.findAll();
	}
}