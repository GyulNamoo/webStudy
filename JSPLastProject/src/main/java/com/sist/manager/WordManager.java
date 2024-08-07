package com.sist.manager;
import java.util.*;

import org.snu.ids.ha.index.Keyword;
import org.snu.ids.ha.index.KeywordExtractor;
import org.snu.ids.ha.index.KeywordList;

import com.sist.vo.WordVO;
public class WordManager {
	/*manager => 외부에서 값을 가져옴 , 실시간 등등....*/
	public List<WordVO> wordCountData(String msg)
	{
		List<WordVO> list = new ArrayList<WordVO>();
		KeywordExtractor ke=new KeywordExtractor(); // 분석기 
		KeywordList kList=ke.extractKeyword(msg, true); // 명사만 추출
		for(int i=0;i<kList.size();i++)
		{
			WordVO vo = new WordVO();
			Keyword kw=kList.get(i);
			if(kw.getString().length()>1 && kw.getCnt()>2) // 2글자 이상을 가져온다
			{
				vo.setWord(kw.getString());
				vo.setCount(kw.getCnt());
				list.add(vo);
			}
		}
		return list;
		
			
	}
}
