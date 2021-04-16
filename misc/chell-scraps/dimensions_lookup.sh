#!bin/sh
#test urls:
#https://www.amazon.ca/Stage-KT7800-Padded-Keyboard-Bench/dp/B000GUR8V8/ref=sr_1_8?keywords=piano+chair&qid=1578374299&sr=8-8
#https://www.amazon.ca/M-Audio-BX5-D3-Powered-Reference/dp/B01J66YEU0/ref=sr_1_7?crid=1EH861CGL5D18&keywords=maudio+studio+monitors&qid=1578371595&sprefix=m+audio+studio+%2Caps%2C218&sr=8-7
#https://www.amazon.ca/dp/B0714D3DVN/ref=cm_sw_r_cp_apa_i_pJbfEbB7YTDJY
#https://www.amazon.ca/Comfortland-Decorative-Christmas-Storage-Unstuffed/dp/B07ZJBQLDT/ref=pd_sbs_196_33?_encoding=UTF8&pd_rd_i=B07ZJBQLDT&pd_rd_r=2c5284a2-1045-4bc8-9f4b-21d0b1bf8d84&pd_rd_w=Xy8Zq&pd_rd_wg=O39If&pf_rd_p=dbebb38c-0e3d-4a67-ac15-432d7c7a2789&pf_rd_r=B676CDP8YCWY2F1EH8MF&psc=1&refRID=B676CDP8YCWY2F1EH8MF
#https://www.amazon.ca/VASAGLE-Mid-Century-Entertainment-Consoles-ULTV09BX/dp/B07H3LWCX3/ref=sr_1_3?keywords=tv%2Bstand&qid=1578545809&s=kitchen&sr=1-3&th=1
# grep 'Size'


URL=$1

CLEANURL=$(echo $1 | ./urlclean.py)
INFOSTRING=$(lynx --dump ${CLEANURL} | grep 'Product Dimensions')
echo $INFOSTRING | ./genobj.py
