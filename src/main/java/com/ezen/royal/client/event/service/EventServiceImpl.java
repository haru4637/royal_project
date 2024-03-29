package com.ezen.royal.client.event.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ezen.royal.client.event.dto.EventDTO;
import com.ezen.royal.client.event.mapper.EventMapper;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	EventMapper eventMapper;
	
	@Override
	public void getEventListInEventTable(Model model) {
		model.addAttribute("typeEventList", eventMapper.getEventListByType("행사"));
	}

	@Override
	public List<EventDTO> getMonthlyEventList(String yearStr, String monthStr) {
		return eventMapper.getMonthlyEventList(yearStr, monthStr);
	}
	
	@Override
	public void getCurrentMonthEventList(Model model) {
		model.addAttribute("currentMonthEventList", eventMapper.getCurrentMonthEventList());
	}
	

	@Override
	public void getCommentListInEventTable(Model model) {
		model.addAttribute("typeCommentaryList", eventMapper.getEventListByType("해설"));
	}
	
	@Override
	public void getEventDetail(Model model, int event_id) {
		model.addAttribute("eventDetail", eventMapper.getEventDetail(event_id));
	}

	@Override
	public void getEventRoundList(Model model, int event_id) {
		model.addAttribute("eventRoundList", eventMapper.getEventRoundList(event_id));
	}
	
	
}