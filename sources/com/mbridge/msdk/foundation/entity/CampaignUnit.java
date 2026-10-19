package com.mbridge.msdk.foundation.entity;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.u;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.MBConfiguration;
import com.mbridge.msdk.system.NoProGuard;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class CampaignUnit implements NoProGuard, Serializable {
    public static final String JSON_KEY_ADS = "ads";
    public static final String JSON_KEY_AD_HTML = "cam_html";
    public static final String JSON_KEY_AD_TYPE = "ad_type";
    public static final String JSON_KEY_AD_ZIP = "cam_tpl_url";
    public static final String JSON_KEY_BANNER_HTML = "cam_html";
    public static final String JSON_KEY_BANNER_URL = "cam_tpl_url";
    public static final String JSON_KEY_CSP = "csp";
    public static final String JSON_KEY_DO = "do";
    public static final String JSON_KEY_ENCRYPT_PRICE = "encrypt_p";
    public static final String JSON_KEY_END_SCREEN_URL = "end_screen_url";
    public static final String JSON_KEY_FRAME_ADS = "frames";
    public static final String JSON_KEY_HTML_URL = "html_url";
    public static final String JSON_KEY_IA_EXT1 = "ia_all_ext1";
    public static final String JSON_KEY_IA_EXT2 = "ia_all_ext2";
    public static final String JSON_KEY_IA_ICON = "ia_icon";
    public static final String JSON_KEY_IA_ORI = "ia_ori";
    public static final String JSON_KEY_IA_RST = "ia_rst";
    public static final String JSON_KEY_IA_URL = "ia_url";
    public static final String JSON_KEY_JM_DO = "jm_do";
    public static final String JSON_KEY_MOF_TEMPLATE_URL = "mof_template_url";
    public static final String JSON_KEY_MOF_TPLID = "mof_tplid";
    public static final String JSON_KEY_NSCPT = "nscpt";
    public static final String JSON_KEY_ONLY_IMPRESSION_URL = "only_impression_url";
    public static final String JSON_KEY_PARENT_SESSION_ID = "parent_session_id";
    public static final String JSON_KEY_PV_URLS = "pv_urls";
    public static final String JSON_KEY_REPLACE_TMP = "replace_tmp";
    public static final String JSON_KEY_REQ_EXT_DATA = "req_ext_data";
    public static final String JSON_KEY_RKS = "rks";
    public static final String JSON_KEY_SESSION_ID = "a";
    public static final String JSON_KEY_SH = "sh";
    public static final String JSON_KEY_TEMPLATE = "template";
    public static final String JSON_KEY_TK_TCP_PORT = "tk_tcp_port";
    public static final String JSON_KEY_TOKEN_RULE = "token_r";
    public static final String JSON_KEY_UNIT_SIZE = "unit_size";
    public static final String JSON_KEY_VCN = "vcn";
    public static final String KEY_IRLFA = "irlfa";
    private static final String TAG = CampaignUnit.class.getSimpleName();
    private static final long serialVersionUID = 1;
    private String adHtml;
    private int adType;
    private String adZip;
    public ArrayList<CampaignEx> ads;
    private String bannerHtml;
    private String bannerUrl;
    private String csp;
    private String domain;
    private double ecppv;
    private HashMap<String, String> epMap;
    private String htmlUrl;
    private String ia_all_ext1;
    private String ia_all_ext2;
    private String ia_icon;
    private int ia_ori;
    private int ia_rst;
    private String ia_url;
    private int jmDo;
    private List<Frame> listFrames;
    private String localRequestId;
    private String onlyImpressionUrl;
    private String parentSessionId;
    private String requestId;
    private HashMap<String, String> rks;
    private String sessionId;
    private String sh;
    private int template;
    private int tokenRule;
    private String unitSize;
    private int vcn;
    private String msg = "";
    private StringBuffer cParams = new StringBuffer();
    private String encryptPrice = "";

    private static void getSysIDAndBKUPID(JSONObject jSONObject) {
        FastKV fastKVBuild;
        com.mbridge.msdk.foundation.controller.c.a();
        try {
            fastKVBuild = new FastKV.Builder(com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_CONFIG), u.b("H+tU+FeXHM==")).build();
        } catch (Exception unused) {
            fastKVBuild = null;
        }
        if (fastKVBuild != null) {
            try {
                Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
                if (jSONObject == null || contextG == null) {
                    return;
                }
                String strOptString = jSONObject.optString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                if (!TextUtils.isEmpty(strOptString) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.l, strOptString)) {
                    com.mbridge.msdk.foundation.same.a.l = strOptString;
                    com.mbridge.msdk.foundation.a.a.a.a().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.l);
                    try {
                        fastKVBuild.putString(u.b("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.l);
                    } catch (Exception unused2) {
                    }
                }
                String strOptString2 = jSONObject.optString("c");
                if (TextUtils.isEmpty(strOptString2) || TextUtils.equals(com.mbridge.msdk.foundation.same.a.m, strOptString2)) {
                    return;
                }
                com.mbridge.msdk.foundation.same.a.m = strOptString2;
                com.mbridge.msdk.foundation.a.a.a.a().a("c", com.mbridge.msdk.foundation.same.a.m);
                try {
                    fastKVBuild.putString(u.b("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.m);
                    return;
                } catch (Exception unused3) {
                    return;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        try {
            Context contextG2 = com.mbridge.msdk.foundation.controller.b.d().g();
            if (jSONObject == null || contextG2 == null) {
                return;
            }
            String strOptString3 = jSONObject.optString(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
            if (!TextUtils.isEmpty(strOptString3) && !TextUtils.equals(com.mbridge.msdk.foundation.same.a.l, strOptString3)) {
                com.mbridge.msdk.foundation.same.a.l = strOptString3;
                com.mbridge.msdk.foundation.a.a.a.a().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.l);
                SharedPreferences sharedPreferences = contextG2.getSharedPreferences(u.b("H+tU+FeXHM=="), 0);
                if (sharedPreferences != null) {
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString(u.b("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.l);
                    editorEdit.apply();
                }
            }
            String strOptString4 = jSONObject.optString("c");
            if (TextUtils.isEmpty(strOptString4) || TextUtils.equals(com.mbridge.msdk.foundation.same.a.m, strOptString4)) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.m = strOptString4;
            com.mbridge.msdk.foundation.a.a.a.a().a("c", com.mbridge.msdk.foundation.same.a.m);
            SharedPreferences sharedPreferences2 = contextG2.getSharedPreferences(u.b("H+tU+FeXHM=="), 0);
            if (sharedPreferences2 != null) {
                SharedPreferences.Editor editorEdit2 = sharedPreferences2.edit();
                editorEdit2.putString(u.b("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.m);
                editorEdit2.apply();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    private Object nullToEmpty(Object obj) {
        return obj == null ? "" : obj;
    }

    public static CampaignUnit parseCampaignUnit(JSONObject jSONObject) {
        return parseCampaignUnit(jSONObject, "");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 29, insn: 0x0396: MOVE (r9 I:??[OBJECT, ARRAY]) = (r29 I:??[OBJECT, ARRAY]), block:B:67:0x0396 */
    /* JADX WARN: Not initialized variable reg: 29, insn: 0x03af: MOVE (r10 I:??[OBJECT, ARRAY]) = (r29 I:??[OBJECT, ARRAY]), block:B:71:0x03af */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v41, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v42 */
    /* JADX WARN: Type inference failed for: r10v43 */
    /* JADX WARN: Type inference failed for: r10v44, types: [com.mbridge.msdk.foundation.entity.CampaignUnit] */
    /* JADX WARN: Type inference failed for: r10v47, types: [com.mbridge.msdk.foundation.entity.CampaignUnit] */
    /* JADX WARN: Type inference failed for: r10v48 */
    /* JADX WARN: Type inference failed for: r10v49 */
    /* JADX WARN: Type inference failed for: r10v50 */
    /* JADX WARN: Type inference failed for: r10v51, types: [com.mbridge.msdk.foundation.entity.CampaignUnit] */
    /* JADX WARN: Type inference failed for: r10v54 */
    /* JADX WARN: Type inference failed for: r10v61 */
    /* JADX WARN: Type inference failed for: r10v62 */
    /* JADX WARN: Type inference failed for: r10v63 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v30, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r27v4 */
    /* JADX WARN: Type inference failed for: r27v7 */
    /* JADX WARN: Type inference failed for: r29v2, types: [com.mbridge.msdk.foundation.entity.CampaignUnit] */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r38v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.mbridge.msdk.foundation.entity.CampaignUnit] */
    public static CampaignUnit parseCampaignUnit(JSONObject jSONObject, String str) {
        ?? r10;
        String str2;
        int i;
        ArrayList arrayList;
        CampaignUnit campaignUnit;
        Object obj;
        String str3;
        ?? r102;
        String str4;
        ?? r11;
        String str5;
        CampaignUnit campaignUnit2;
        String str6 = JSON_KEY_ADS;
        String str7 = "a";
        String str8 = CampaignEx.JSON_KEY_ECPPV;
        String str9 = JSON_KEY_ONLY_IMPRESSION_URL;
        String str10 = "html_url";
        if (jSONObject != 0) {
            try {
                CampaignUnit campaignUnit3 = new CampaignUnit();
                try {
                    String strOptString = jSONObject.optString(JSON_KEY_RKS);
                    if (!TextUtils.isEmpty(strOptString)) {
                        try {
                            JSONObject jSONObject2 = new JSONObject(strOptString);
                            Iterator<String> itKeys = jSONObject2.keys();
                            HashMap<String, String> map = new HashMap<>();
                            while (itKeys != null && itKeys.hasNext()) {
                                String next = itKeys.next();
                                map.put(next, jSONObject2.optString(next));
                            }
                            campaignUnit3.setRks(map);
                        } catch (Exception unused) {
                            return campaignUnit3;
                        }
                    }
                    if (!TextUtils.isEmpty(str)) {
                        HashMap<String, String> map2 = new HashMap<>();
                        map2.put("encrypt_p", "");
                        map2.put(KEY_IRLFA, "");
                        campaignUnit3.setEpMap(map2);
                    }
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(JSON_KEY_REQ_EXT_DATA);
                    int iOptInt = jSONObject.optInt(JSON_KEY_NSCPT, 1);
                    String strOptString2 = jSONObject.optString(JSON_KEY_MOF_TEMPLATE_URL, "");
                    int iOptInt2 = jSONObject.optInt(JSON_KEY_MOF_TPLID, 0);
                    String string = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.toString() : "";
                    new JSONArray();
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("pv_urls");
                    if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                        str2 = string;
                        i = iOptInt;
                        arrayList = null;
                    } else {
                        str2 = string;
                        arrayList = new ArrayList(jSONArrayOptJSONArray.length());
                        i = iOptInt;
                        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                            arrayList.add(jSONArrayOptJSONArray.getString(i2));
                        }
                    }
                    com.mbridge.msdk.foundation.db.a.a.a().a(jSONObject.optJSONObject(JSON_KEY_REPLACE_TMP), true);
                    getSysIDAndBKUPID(jSONObject);
                    campaignUnit3.setSessionId(jSONObject.optString("a"));
                    campaignUnit3.setParentSessionId(jSONObject.optString(JSON_KEY_PARENT_SESSION_ID));
                    campaignUnit3.setAdType(jSONObject.optInt("ad_type"));
                    campaignUnit3.setUnitSize(jSONObject.optString(JSON_KEY_UNIT_SIZE));
                    campaignUnit3.setHtmlUrl(jSONObject.optString("html_url"));
                    campaignUnit3.setOnlyImpressionUrl(jSONObject.optString(JSON_KEY_ONLY_IMPRESSION_URL));
                    campaignUnit3.setEcppv(jSONObject.optDouble(CampaignEx.JSON_KEY_ECPPV));
                    campaignUnit3.setTemplate(jSONObject.optInt("template"));
                    campaignUnit3.setJmDo(jSONObject.optInt(JSON_KEY_JM_DO));
                    campaignUnit3.setIa_icon(jSONObject.optString("ia_icon"));
                    campaignUnit3.setIa_rst(jSONObject.optInt("ia_rst"));
                    campaignUnit3.setIa_url(jSONObject.optString("ia_url"));
                    campaignUnit3.setIa_ori(jSONObject.optInt("ia_ori"));
                    campaignUnit3.setIa_all_ext1(jSONObject.optString(JSON_KEY_IA_EXT1));
                    campaignUnit3.setIa_all_ext2(jSONObject.optString(JSON_KEY_IA_EXT2));
                    campaignUnit3.setVcn(jSONObject.optInt("vcn"));
                    campaignUnit3.setTokenRule(jSONObject.optInt("token_r"));
                    campaignUnit3.setEncryptPrice(jSONObject.optString("encrypt_p"));
                    JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(JSON_KEY_ADS);
                    JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray(JSON_KEY_FRAME_ADS);
                    r10 = JSON_KEY_TK_TCP_PORT;
                    int i3 = iOptInt2;
                    String str11 = "web env is not support";
                    String str12 = JSON_KEY_END_SCREEN_URL;
                    try {
                        try {
                            try {
                                if (jSONArrayOptJSONArray3 == null || jSONArrayOptJSONArray3.length() <= 0) {
                                    String str13 = JSON_KEY_ONLY_IMPRESSION_URL;
                                    String str14 = "html_url";
                                    String str15 = JSON_KEY_TK_TCP_PORT;
                                    String str16 = JSON_KEY_END_SCREEN_URL;
                                    r10 = campaignUnit3;
                                    String str17 = strOptString2;
                                    String str18 = str2;
                                    int i4 = i;
                                    String str19 = CampaignEx.JSON_KEY_ECPPV;
                                    if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                                        ArrayList arrayList2 = new ArrayList();
                                        int i5 = 0;
                                        r10 = r10;
                                        while (i5 < jSONArrayOptJSONArray2.length()) {
                                            JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray2.optJSONObject(i5);
                                            String str20 = str13;
                                            String strOptString3 = jSONObject.optString(str20);
                                            String str21 = str14;
                                            String strOptString4 = jSONObject.optString(str21);
                                            String str22 = str18;
                                            String str23 = str16;
                                            String strOptString5 = jSONObject.optString(str23);
                                            String str24 = str19;
                                            ?? r29 = r10;
                                            String str25 = str15;
                                            JSONArray jSONArray = jSONArrayOptJSONArray2;
                                            str13 = str20;
                                            str19 = str24;
                                            String str26 = str17;
                                            CampaignEx campaign = CampaignEx.parseCampaign(jSONObjectOptJSONObject2, strOptString3, strOptString4, strOptString5, false, r29, str, jSONObject.optString(str24));
                                            if (campaign != null) {
                                                campaign.setMof_tplid(i3);
                                                str3 = str26;
                                                campaign.setMof_template_url(str3);
                                                campaign.setNscpt(i4);
                                                campaign.setPv_urls(arrayList);
                                                campaign.setReq_ext_data(str22);
                                                campaign.setVcn(r29.getVcn());
                                                campaign.setTokenRule(r29.getTokenRule());
                                                campaign.setEncryptPrice(r29.getEncryptPrice());
                                                campaign.setTrackingTcpPort(jSONObject.optInt(str25, 9377));
                                                arrayList2.add(campaign);
                                                r102 = r29;
                                            } else {
                                                str3 = str26;
                                                r102 = r29;
                                                r102.setMsg(str11);
                                            }
                                            i5++;
                                            str18 = str22;
                                            str14 = str21;
                                            str17 = str3;
                                            jSONArrayOptJSONArray2 = jSONArray;
                                            str16 = str23;
                                            str15 = str25;
                                            r10 = r102;
                                        }
                                        r10.setAds(arrayList2);
                                    }
                                } else {
                                    ArrayList arrayList3 = new ArrayList();
                                    String str27 = "template";
                                    int i6 = 0;
                                    ?? r103 = r10;
                                    while (i6 < jSONArrayOptJSONArray3.length()) {
                                        JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray3.optJSONObject(i6);
                                        int i7 = i6;
                                        JSONArray jSONArray2 = jSONObjectOptJSONObject3.getJSONArray(str6);
                                        String str28 = str6;
                                        ArrayList arrayList4 = new ArrayList();
                                        String str29 = str7;
                                        ?? r27 = r103;
                                        int i8 = 0;
                                        while (i8 < jSONArray2.length()) {
                                            JSONObject jSONObjectOptJSONObject4 = jSONArray2.optJSONObject(i8);
                                            String strOptString6 = jSONObject.optString(str9);
                                            String strOptString7 = jSONObject.optString(str10);
                                            String strOptString8 = jSONObject.optString(str12);
                                            String strOptString9 = jSONObject.optString(str8);
                                            ?? r33 = r27;
                                            JSONObject jSONObject3 = jSONObjectOptJSONObject3;
                                            String str30 = str2;
                                            JSONArray jSONArray3 = jSONArrayOptJSONArray3;
                                            JSONArray jSONArray4 = jSONArray2;
                                            int i9 = i;
                                            String str31 = str8;
                                            ArrayList arrayList5 = arrayList3;
                                            String str32 = str9;
                                            String str33 = str10;
                                            String str34 = str12;
                                            String str35 = str11;
                                            int i10 = i3;
                                            CampaignUnit campaignUnit4 = campaignUnit3;
                                            CampaignEx campaign2 = CampaignEx.parseCampaign(jSONObjectOptJSONObject4, strOptString6, strOptString7, strOptString8, false, campaignUnit3, str, strOptString9);
                                            if (campaign2 != null) {
                                                campaign2.setKeyIaUrl(campaignUnit4.getIa_url());
                                                campaign2.setKeyIaOri(campaignUnit4.getIa_ori());
                                                campaign2.setKeyIaRst(campaignUnit4.getIa_rst());
                                                campaign2.setKeyIaIcon(campaignUnit4.getIa_icon());
                                                campaign2.setAdType(jSONObject.optInt("ad_type"));
                                                campaign2.setIa_ext1(jSONObject.optString(CampaignEx.KEY_IA_EXT1));
                                                campaign2.setIa_ext2(jSONObject.optString(CampaignEx.KEY_IA_EXT2));
                                                campaign2.setVcn(campaignUnit4.getVcn());
                                                campaign2.setTokenRule(campaignUnit4.getTokenRule());
                                                campaign2.setEncryptPrice(campaignUnit4.getEncryptPrice());
                                                campaign2.setMof_tplid(i10);
                                                str4 = strOptString2;
                                                campaign2.setMof_template_url(str4);
                                                campaign2.setNscpt(i9);
                                                campaign2.setPv_urls(arrayList);
                                                str5 = str30;
                                                campaign2.setReq_ext_data(str5);
                                                r11 = r33;
                                                campaign2.setTrackingTcpPort(jSONObject.optInt(r11, 9377));
                                                arrayList4.add(campaign2);
                                                campaignUnit2 = campaignUnit4;
                                            } else {
                                                str4 = strOptString2;
                                                r11 = r33;
                                                str5 = str30;
                                                campaignUnit2 = campaignUnit4;
                                                campaignUnit2.setMsg(str35);
                                            }
                                            i8++;
                                            arrayList3 = arrayList5;
                                            str11 = str35;
                                            i3 = i10;
                                            strOptString2 = str4;
                                            jSONArrayOptJSONArray3 = jSONArray3;
                                            str8 = str31;
                                            str10 = str33;
                                            str9 = str32;
                                            i = i9;
                                            campaignUnit3 = campaignUnit2;
                                            r27 = r11;
                                            str2 = str5;
                                            jSONArray2 = jSONArray4;
                                            jSONObjectOptJSONObject3 = jSONObject3;
                                            str12 = str34;
                                        }
                                        JSONObject jSONObject4 = jSONObjectOptJSONObject3;
                                        String str36 = str12;
                                        String str37 = str2;
                                        int i11 = i;
                                        String str38 = str8;
                                        JSONArray jSONArray5 = jSONArrayOptJSONArray3;
                                        ArrayList arrayList6 = arrayList3;
                                        Frame frame = new Frame();
                                        frame.setParentSessionId(jSONObject.optString(JSON_KEY_PARENT_SESSION_ID));
                                        frame.setSessionId(jSONObject.optString(str29));
                                        frame.setCampaigns(arrayList4);
                                        String str39 = str27;
                                        frame.setTemplate(jSONObject4.optInt(str39));
                                        arrayList6.add(frame);
                                        str11 = str11;
                                        i3 = i3;
                                        str27 = str39;
                                        str7 = str29;
                                        strOptString2 = strOptString2;
                                        jSONArrayOptJSONArray3 = jSONArray5;
                                        str10 = str10;
                                        str9 = str9;
                                        arrayList3 = arrayList6;
                                        campaignUnit3 = campaignUnit3;
                                        r103 = r27;
                                        str2 = str37;
                                        str8 = str38;
                                        str12 = str36;
                                        i = i11;
                                        i6 = i7 + 1;
                                        str6 = str28;
                                    }
                                    r10 = campaignUnit3;
                                    r10.setListFrames(arrayList3);
                                }
                            } catch (Exception unused2) {
                                r10 = obj;
                            }
                        } catch (Exception unused3) {
                        }
                    } catch (Exception unused4) {
                        return campaignUnit;
                    }
                } catch (Exception unused5) {
                    r10 = campaignUnit3;
                }
                return r10;
            } catch (Exception unused6) {
            }
        }
        return null;
    }

    public static CampaignUnit parseV5CampaignUnit(JSONObject jSONObject) {
        return parseV5CampaignUnit(jSONObject, "");
    }

    public static CampaignUnit parseV5CampaignUnit(JSONObject jSONObject, String str) {
        return parseCampaignUnit(jSONObject, str);
    }

    public String assembCParams() {
        String str;
        String strValueOf;
        StringBuffer stringBuffer = this.cParams;
        if (stringBuffer != null && stringBuffer.length() > 0) {
            return this.cParams.toString();
        }
        try {
            String strA = com.mbridge.msdk.foundation.tools.g.a();
            Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
            String strE = w.e(contextG);
            String strD = w.d(contextG);
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                strValueOf = String.valueOf(w.r(contextG));
                str = w.l(contextG) + "x" + w.m(contextG);
            } else {
                str = "";
                strValueOf = str;
            }
            StringBuffer stringBuffer2 = this.cParams;
            stringBuffer2.append(getAdType());
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty("1"));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(Build.VERSION.RELEASE));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(MBConfiguration.SDK_VERSION));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(w.i()));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(str));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(Integer.valueOf(w.h(com.mbridge.msdk.foundation.controller.b.d().g()))));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(w.g(com.mbridge.msdk.foundation.controller.b.d().g())));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(strValueOf));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(strD));
            stringBuffer2.append(nullToEmpty(strE));
            stringBuffer2.append("|");
            stringBuffer2.append("|");
            stringBuffer2.append("|");
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(strA));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(""));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(w.k()));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(""));
            stringBuffer2.append("|");
            stringBuffer2.append("");
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(""));
            stringBuffer2.append("|");
            stringBuffer2.append(nullToEmpty(com.mbridge.msdk.foundation.same.a.l + "," + com.mbridge.msdk.foundation.same.a.m));
            stringBuffer2.append("|");
            stringBuffer2.append(w.u());
            stringBuffer2.append("|");
            this.cParams = stringBuffer2;
        } catch (Throwable th) {
            aa.b(TAG, th.getMessage(), th);
        }
        return this.cParams.toString();
    }

    public String getAdHtml() {
        return this.adHtml;
    }

    public int getAdType() {
        return this.adType;
    }

    public String getAdZip() {
        return this.adZip;
    }

    public ArrayList<CampaignEx> getAds() {
        return this.ads;
    }

    public String getBannerHtml() {
        return this.bannerHtml;
    }

    public String getBannerUrl() {
        return this.bannerUrl;
    }

    public String getCsp() {
        return this.csp;
    }

    public String getDomain() {
        return this.domain;
    }

    public double getEcppv() {
        return this.ecppv;
    }

    public String getEncryptPrice() {
        return this.encryptPrice;
    }

    public HashMap<String, String> getEpMap() {
        return this.epMap;
    }

    public String getHtmlUrl() {
        return this.htmlUrl;
    }

    public String getIa_all_ext1() {
        return this.ia_all_ext1;
    }

    public String getIa_all_ext2() {
        return this.ia_all_ext2;
    }

    public String getIa_icon() {
        return this.ia_icon;
    }

    public int getIa_ori() {
        return this.ia_ori;
    }

    public int getIa_rst() {
        return this.ia_rst;
    }

    public String getIa_url() {
        return this.ia_url;
    }

    public int getJmDo() {
        return this.jmDo;
    }

    public List<Frame> getListFrames() {
        return this.listFrames;
    }

    public String getLocalRequestId() {
        return this.localRequestId;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getOnlyImpressionUrl() {
        return this.onlyImpressionUrl;
    }

    public String getParentSessionId() {
        return this.parentSessionId;
    }

    public String getRequestId() {
        try {
            if (!TextUtils.isEmpty(this.requestId)) {
                return this.requestId;
            }
            if (TextUtils.isEmpty(this.onlyImpressionUrl)) {
                return "";
            }
            Uri uri = Uri.parse(this.onlyImpressionUrl);
            if (uri != null) {
                this.requestId = uri.getQueryParameter(CampaignEx.JSON_KEY_AD_K);
            }
            return this.requestId;
        } catch (Exception unused) {
            return "";
        }
    }

    public HashMap<String, String> getRks() {
        return this.rks;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public String getSh() {
        return this.sh;
    }

    public int getTemplate() {
        return this.template;
    }

    public int getTokenRule() {
        int i = this.tokenRule;
        if (i == 1) {
            return i;
        }
        return 0;
    }

    public String getUnitSize() {
        return this.unitSize;
    }

    public int getVcn() {
        int i = this.vcn;
        if (i > 1) {
            return i;
        }
        return 1;
    }

    public void setAdHtml(String str) {
        this.adHtml = str;
    }

    public void setAdType(int i) {
        this.adType = i;
    }

    public void setAdZip(String str) {
        this.adZip = str;
    }

    public void setAds(ArrayList<CampaignEx> arrayList) {
        this.ads = arrayList;
    }

    public void setBannerHtml(String str) {
        this.bannerHtml = str;
    }

    public void setBannerUrl(String str) {
        this.bannerUrl = str;
    }

    public void setCsp(String str) {
        this.csp = str;
    }

    public void setDomain(String str) {
        this.domain = str;
    }

    public void setEcppv(double d2) {
        this.ecppv = d2;
    }

    public void setEncryptPrice(String str) {
        this.encryptPrice = str;
    }

    public void setEpMap(HashMap<String, String> map) {
        this.epMap = map;
    }

    public void setHtmlUrl(String str) {
        this.htmlUrl = str;
    }

    public void setIa_all_ext1(String str) {
        this.ia_all_ext1 = str;
    }

    public void setIa_all_ext2(String str) {
        this.ia_all_ext2 = str;
    }

    public void setIa_icon(String str) {
        this.ia_icon = str;
    }

    public void setIa_ori(int i) {
        this.ia_ori = i;
    }

    public void setIa_rst(int i) {
        this.ia_rst = i;
    }

    public void setIa_url(String str) {
        this.ia_url = str;
    }

    public void setJmDo(int i) {
        this.jmDo = i;
    }

    public void setListFrames(List<Frame> list) {
        this.listFrames = list;
    }

    public void setLocalRequestId(String str) {
        this.localRequestId = str;
        Iterator<CampaignEx> it = getAds().iterator();
        while (it.hasNext()) {
            it.next().setLocalRequestId(str);
        }
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setOnlyImpressionUrl(String str) {
        this.onlyImpressionUrl = str;
    }

    public void setParentSessionId(String str) {
        this.parentSessionId = str;
    }

    public void setRks(HashMap<String, String> map) {
        this.rks = map;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public void setSh(String str) {
        this.sh = str;
    }

    public void setTemplate(int i) {
        this.template = i;
    }

    public void setTokenRule(int i) {
        this.tokenRule = i;
    }

    public void setUnitSize(String str) {
        this.unitSize = str;
    }

    public void setVcn(int i) {
        this.vcn = i;
    }
}
