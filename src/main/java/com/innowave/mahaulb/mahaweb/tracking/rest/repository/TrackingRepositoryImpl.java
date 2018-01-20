package com.innowave.mahaulb.mahaweb.tracking.rest.repository;

import java.util.List;
import java.util.Set;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.innowave.mahaulb.common.dao.trans.TtServiceRequest;

 

@Repository
@Transactional
public class TrackingRepositoryImpl implements TrackingRepository 
{
	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public List<Object[] >  getJSONTrackingListRepo(TtServiceRequest searchDto) 
	{
		Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
		Root<TtServiceRequest> root = query.from(TtServiceRequest.class);
	    Predicate where = builder.conjunction();
	    query.multiselect(root.get("srNumber"),root.get("organisationName"),root.get("applicantName"),root.get("organisationAddress"));
	    where =  builder.equal(root.get("srNumber"),searchDto.getSrNumber());
		where = builder.and(where,builder.equal(root.get("ulbId"),searchDto.getUlbId()));
 		query = query.where(where);
		Query<Object[]> queryObj=session.createQuery(query);
        List<Object[]> list=queryObj.getResultList();
        return list;
      
	}
	
	@Override
	public List<Object[]> getJSONDownlodingAppListRepo(TtServiceRequest searchDownloadApp){
		
		Session session = sessionFactory.getCurrentSession();
	    CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
		Root<TtServiceRequest> root = query.from(TtServiceRequest.class);
	    Predicate where = builder.conjunction();
	    query.multiselect(root.get("srNumber"),root.get("organisationName"),root.get("applicantName"),root.get("organisationAddress"));
	    where =  builder.equal(root.get("srNumber"),searchDownloadApp.getSrNumber());
		where = builder.and(where,builder.equal(root.get("ulbId"),searchDownloadApp.getUlbId()));
			query = query.where(where);
		Query<Object[]> queryObj=session.createQuery(query);
	    List<Object[]> list=queryObj.getResultList();
	    return list;	
    }


}
