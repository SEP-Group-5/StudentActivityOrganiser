package com.saos.web.controllers;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


public class ActivityDaoImpl implements ActivityDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;
    
	
	@Autowired
	public void setDataSource(DataSource jdbcTemplate)
	{
		this.jdbcTemplate = new JdbcTemplate(jdbcTemplate);
	}
	
    
	@Override
	public void addActivity(Activity activity) {
		String sql = "INSERT INTO activity(title, description, start, end, rsvp, location, cost, capacity, status, hostId) VALUES(?,?,?,?,?,?,?,?,?);";
		jdbcTemplate.update(sql, new Object[]{
			activity.getTitle(),
			activity.getDescription(),
			activity.getStart(),
			activity.getEnd(),
			activity.getRsvp(),
			activity.getLocation(),
			activity.getCost(),
			activity.getCapacity(),
			activity.getStatus(),
		});
	}

	@Override
	public Activity getActivity(int activityId)
	{
		return null;
	}


	@Override
	public List<Activity> getAllActivity() {
		String sql = "SELECT * FROM activity";
		return jdbcTemplate.query(sql, new RowMapper<Activity>()
		{
			@Override
			public Activity mapRow(ResultSet rs, int rowNum) throws SQLException 
			{
				Activity activity = new Activity();
				activity.setId(rs.getInt("activityId"));
				activity.setTitle(rs.getString("title"));
				activity.setDescription(rs.getString("description"));
				activity.setStart(rs.getDate("start"));
				activity.setEnd(rs.getDate("end"));
				activity.setRsvp(rs.getDate("rsvp"));
				activity.setLocation(rs.getString("location"));
				activity.setCost(rs.getDouble("cost"));
				activity.setStatus(rs.getString("status"));
				
				return activity;
			}
			 
		});
	}
	
}
