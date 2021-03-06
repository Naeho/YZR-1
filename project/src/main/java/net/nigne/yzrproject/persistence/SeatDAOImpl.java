package net.nigne.yzrproject.persistence;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import net.nigne.yzrproject.domain.PlexVO;
import net.nigne.yzrproject.domain.SeatVO;
import net.nigne.yzrproject.domain.TheaterVO;

@Repository
public class SeatDAOImpl implements SeatDAO {
	
	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public List<SeatVO> getList(String plexNum) {
		// TODO Auto-generated method stub
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<SeatVO> mainQuery = cb.createQuery(SeatVO.class);
		Root<SeatVO> mainQueryroot = mainQuery.from(SeatVO.class);
		
		// select * from theater where theater_area = '지역이름'
		mainQuery.select(mainQueryroot).orderBy(cb.asc(mainQueryroot.get("seat_index")));
		mainQuery.where(cb.equal(mainQueryroot.get("plex_number"), plexNum));
		
		TypedQuery<SeatVO> tq = entityManager.createQuery(mainQuery);
		List<SeatVO> list = tq.getResultList();
		
		return list;
	}
	
	@Override
	public List<SeatVO> getIndex(String plexNum) {
		// TODO Auto-generated method stub
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<SeatVO> mainQuery = cb.createQuery(SeatVO.class);
		Root<SeatVO> mainQueryroot = mainQuery.from(SeatVO.class);
		
		// select * from theater where theater_area = '지역이름'
		mainQuery.select(mainQueryroot.get("seat_index")).distinct(true).orderBy(cb.asc(mainQueryroot.get("seat_index")));
		
		TypedQuery<SeatVO> tq = entityManager.createQuery(mainQuery);
		List<SeatVO> list = tq.getResultList();
		
		return list;
	}

	@Override
	public void updateReservation(int SeatNo) {
		// TODO Auto-generated method stub		
		
														//primarykey
		SeatVO seatVO = entityManager.find(SeatVO.class, SeatNo);
	
		SeatVO mergeVO = entityManager.merge(seatVO);
		mergeVO.setReservation_exist("1");
		
			

	}

	@Override
	public List<Integer> getPrimary(String theaterId, String plexNum, String seat1, String seat2, String seat3, 
								   String seat4, String seat5, String seat6, String seat7, String seat8) {
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<Integer> mainQuery = cb.createQuery(Integer.class);
		Root<SeatVO> mainQueryroot = mainQuery.from(SeatVO.class);
		
		List<Integer> list = new ArrayList<Integer>();
		String seat[] = new String[8];
		seat[0] = seat1;
		seat[1] = seat2;
		seat[2] = seat3;
		seat[3] = seat4;
		seat[4] = seat5;
		seat[5] = seat6;
		seat[6] = seat7;
		seat[7] = seat8;

		String SeatIndex = "";
		int SeatNumber = 0;
		
		try{
			for(int i = 0; i < 8; i++) {
				System.out.println("2");
				if(seat[i] != ""){
					System.out.println("333333333");
					SeatIndex = seat[i].substring(0,1);
					SeatNumber = Integer.parseInt(seat[i].substring(1));
					System.out.println("-----------------------------------------" + SeatIndex);
					System.out.println("-----------------------------------------" + SeatNumber);
					mainQuery.select(mainQueryroot.get("no"));
					mainQuery.where(cb.equal(mainQueryroot.get("plex_number"), plexNum),
									cb.equal(mainQueryroot.get("theater_id"), theaterId),
									cb.equal(mainQueryroot.get("seat_index"), SeatIndex),
									cb.equal(mainQueryroot.get("seat_number"), SeatNumber));
	
					TypedQuery<Integer> tq = entityManager.createQuery(mainQuery);
					//System.out.println("SingleResult = " + tq.getSingleResult());
					list.add(tq.getSingleResult());
					

				}
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		
		return list;
	}

}
