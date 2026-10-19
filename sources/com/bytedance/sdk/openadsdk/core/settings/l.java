package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.settings.d;
import com.bytedance.sdk.openadsdk.utils.s;
import com.facebook.share.internal.ShareConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: SettingsDefaultRepository.java */
/* JADX INFO: loaded from: classes2.dex */
public class l extends n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final ArrayList<String> f1684d = new ArrayList<>(Arrays.asList("ja", "en", "ko", "zh", "th", "vi", "id", "ru", "ar", "fr", DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR, "it", "es", "hi", "pt", "zh-Hant", "ms", "pl", "tr"));
    public boolean c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Set<String> f1685e;

    public l() {
        super("tt_sdk_settings.prop");
        this.f1685e = Collections.synchronizedSet(new HashSet());
    }

    public static Set<String> a(Set<String> set) {
        try {
            if (set == null) {
                return new HashSet();
            }
            HashSet hashSet = new HashSet();
            for (String str : set) {
                if (!TextUtils.isEmpty(str)) {
                    hashSet.add(str);
                }
            }
            return hashSet;
        } catch (Throwable unused) {
            return new HashSet();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.d
    public void a(JSONObject jSONObject) throws Throwable {
        int iOptInt;
        d.a aVarA = a();
        JSONObject jSONObjectE = o.aj().e();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("digest");
        this.c = (jSONObjectOptJSONObject == null || jSONObjectE == null || !jSONObjectOptJSONObject.toString().equals(jSONObjectE.toString())) ? false : true;
        if (jSONObjectOptJSONObject != null) {
            aVarA.a("digest", jSONObjectOptJSONObject.toString());
        } else {
            aVarA.a("digest");
        }
        aVarA.a("data_time", jSONObject.optLong("data_time"));
        if (jSONObject.has("req_inter_min")) {
            long jOptLong = jSONObject.optLong("req_inter_min", 10L) * 60 * 1000;
            if (jOptLong < 0 || jOptLong > 86400000) {
                jOptLong = 600000;
            }
            aVarA.a("req_inter_min", jOptLong);
        }
        if (jSONObject.has("lp_new_style")) {
            aVarA.a("landingpage_new_style", jSONObject.optInt("lp_new_style", Integer.MAX_VALUE));
        }
        if (jSONObject.has("blank_detect_rate")) {
            int iOptInt2 = jSONObject.optInt("blank_detect_rate", 30);
            if (iOptInt2 < 0 || iOptInt2 > 100) {
                iOptInt2 = 30;
            }
            aVarA.a("blank_detect_rate", iOptInt2);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("feq_policy");
        if (jSONObjectOptJSONObject2 != null) {
            if (jSONObjectOptJSONObject2.has("duration")) {
                aVarA.a("duration", jSONObjectOptJSONObject2.optLong("duration") * 1000);
            }
            if (jSONObjectOptJSONObject2.has("max")) {
                aVarA.a("max", jSONObjectOptJSONObject2.optInt("max"));
            }
        }
        if (jSONObject.has("vbtt")) {
            aVarA.a("vbtt", jSONObject.optInt("vbtt", 5));
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("abtest");
        if (jSONObjectOptJSONObject3 != null) {
            if (jSONObjectOptJSONObject3.has("version")) {
                aVarA.a("ab_test_version", jSONObjectOptJSONObject3.optString("version"));
            }
            if (jSONObjectOptJSONObject3.has("param")) {
                aVarA.a("ab_test_param", jSONObjectOptJSONObject3.optString("param"));
            }
        } else {
            o.aj().g();
        }
        JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("log_rate_conf");
        if (jSONObjectOptJSONObject4 != null && jSONObjectOptJSONObject4.has("global_rate")) {
            aVarA.a("global_rate", (float) jSONObjectOptJSONObject4.optDouble("global_rate", 1.0d));
        }
        if (jSONObject.has("pyload_h5")) {
            aVarA.a("pyload_h5", jSONObject.optString("pyload_h5"));
        }
        if (jSONObject.has("pure_pyload_h5")) {
            aVarA.a("playableLoadH5Url", jSONObject.optString("pure_pyload_h5"));
        }
        if (jSONObject.has("ads_url")) {
            aVarA.a("ads_url", jSONObject.optString("ads_url"));
        }
        if (jSONObject.has("app_log_url")) {
            aVarA.a("app_log_url", jSONObject.optString("app_log_url"));
        }
        if (jSONObject.has("apm_url")) {
            aVarA.a("apm_url", jSONObject.optString("apm_url"));
        }
        if (jSONObject.has("coppa")) {
            int iOptInt3 = jSONObject.optInt("coppa", -99);
            com.bytedance.sdk.openadsdk.core.h.b().d(iOptInt3);
            aVarA.a("coppa", iOptInt3);
        }
        if (jSONObject.has(CampaignEx.JSON_KEY_PRIVACY_URL)) {
            aVarA.a("policy_url", jSONObject.optString(CampaignEx.JSON_KEY_PRIVACY_URL));
        }
        if (jSONObject.has("consent_url")) {
            aVarA.a("consent_url", jSONObject.optString("consent_url"));
        }
        if (jSONObject.has("ivrv_downward")) {
            aVarA.a("ivrv_downward", jSONObject.optInt("ivrv_downward", 0));
        }
        if (jSONObject.has("dc")) {
            aVarA.a("dc", jSONObject.optString("dc"));
        }
        o.aj().a(jSONObject, aVarA);
        o.aj().b(jSONObject, aVarA);
        if (jSONObject.has("if_both_open")) {
            aVarA.a("if_both_open", jSONObject.optInt("if_both_open", 0));
        }
        if (jSONObject.has("support_tnc")) {
            aVarA.a("support_tnc", jSONObject.optInt("support_tnc", 1));
        }
        if (jSONObject.has("insert_js_config")) {
            aVarA.a("insert_js_config", jSONObject.optString("insert_js_config", ""));
        }
        if (jSONObject.has("max_tpl_cnts")) {
            aVarA.a("max_tpl_cnts", jSONObject.optInt("max_tpl_cnts", 100));
        }
        JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("app_common_config");
        if (jSONObjectOptJSONObject5 != null) {
            if (jSONObjectOptJSONObject5.has("force_language")) {
                String strOptString = jSONObjectOptJSONObject5.optString("force_language");
                if (!TextUtils.isEmpty(strOptString) && f1684d.contains(strOptString)) {
                    aVarA.a("force_language", strOptString);
                }
            }
            if (jSONObjectOptJSONObject5.has("fetch_tpl_timeout_ctrl")) {
                aVarA.a("fetch_tpl_timeout_ctrl", jSONObjectOptJSONObject5.optInt("fetch_tpl_timeout_ctrl", 3000));
            }
            if (jSONObjectOptJSONObject5.has("fetch_tpl_second")) {
                aVarA.a("fetch_tpl_second", jSONObjectOptJSONObject5.optInt("fetch_tpl_second", 0));
            }
            if (jSONObjectOptJSONObject5.has("disable_rotate_banner_on_dislike")) {
                aVarA.a("disable_rotate_banner_on_dislike", jSONObjectOptJSONObject5.optInt("disable_rotate_banner_on_dislike", Integer.MAX_VALUE));
            }
            if (jSONObjectOptJSONObject5.has("support_gzip")) {
                aVarA.a("support_gzip", jSONObjectOptJSONObject5.optBoolean("support_gzip", false));
            }
            if (jSONObjectOptJSONObject5.has("aes_key")) {
                aVarA.a("aes_key", jSONObjectOptJSONObject5.optString("aes_key"));
            }
            if (jSONObjectOptJSONObject5.has("support_rtl")) {
                aVarA.a("support_rtl", jSONObjectOptJSONObject5.optBoolean("support_rtl", false));
            }
            if (jSONObjectOptJSONObject5.has("ad_revenue_enable")) {
                aVarA.a("ad_revenue_enable", jSONObjectOptJSONObject5.optBoolean("ad_revenue_enable", false));
            }
            if (jSONObjectOptJSONObject5.has("gecko_hosts")) {
                try {
                    this.f1685e.clear();
                    JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject5.optJSONArray("gecko_hosts");
                    if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() != 0) {
                        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                            this.f1685e.add(jSONArrayOptJSONArray.getString(i));
                        }
                    }
                    this.f1685e = a(this.f1685e);
                    aVarA.a("gecko_hosts", jSONArrayOptJSONArray.toString());
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.l.d("GeckoLog: settings json error " + th);
                }
            }
        }
        if (jSONObject.has("read_video_from_cache")) {
            aVarA.a("read_video_from_cache", jSONObject.optInt("read_video_from_cache", 1));
        }
        b.a(jSONObject.optJSONArray("ad_slot_conf_list"));
        JSONObject jSONObjectOptJSONObject6 = jSONObject.optJSONObject(ShareConstants.WEB_DIALOG_PARAM_PRIVACY);
        if (jSONObjectOptJSONObject6 != null) {
            if (jSONObjectOptJSONObject6.has("ad_enable")) {
                aVarA.a("privacy_ad_enable", jSONObjectOptJSONObject6.optInt("ad_enable", Integer.MAX_VALUE));
            }
            if (jSONObjectOptJSONObject6.has("personalized_ad")) {
                aVarA.a("privacy_personalized_ad", jSONObjectOptJSONObject6.optInt("personalized_ad", Integer.MAX_VALUE));
            }
            if (jSONObjectOptJSONObject6.has("sladar_enable")) {
                aVarA.a("privacy_sladar_enable", jSONObjectOptJSONObject6.optInt("sladar_enable", Integer.MAX_VALUE));
            }
            if (jSONObjectOptJSONObject6.has("app_log_enable")) {
                aVarA.a("privacy_app_log_enable", jSONObjectOptJSONObject6.optInt("app_log_enable", Integer.MAX_VALUE));
            }
            if (jSONObjectOptJSONObject6.has("debug_unlock")) {
                aVarA.a("privacy_debug_unlock", jSONObjectOptJSONObject6.optInt("debug_unlock", Integer.MAX_VALUE));
            }
            if (jSONObjectOptJSONObject6.has("fields_allowed")) {
                String strOptString2 = jSONObjectOptJSONObject6.optString("fields_allowed", "");
                if (TextUtils.isEmpty(strOptString2)) {
                    aVarA.a("privacy_fields_allowed");
                } else {
                    aVarA.a("privacy_fields_allowed", strOptString2);
                }
            }
        }
        if (jSONObject.has("video_cache_config")) {
            aVarA.a("video_cache_config", jSONObject.optString("video_cache_config"));
        }
        if (jSONObject.has("loaded_recall_time")) {
            int iOptInt4 = jSONObject.optInt("loaded_recall_time", 0);
            if (iOptInt4 != 0 && iOptInt4 != 1) {
                iOptInt4 = 0;
            }
            aVarA.a("loadedCallbackOpportunity", iOptInt4);
        }
        if (jSONObject.has("load_strategy")) {
            int iOptInt5 = jSONObject.optInt("load_strategy", 0);
            if (iOptInt5 != 0 && iOptInt5 != 1) {
                iOptInt5 = 0;
            }
            aVarA.a("load_callback_strategy", iOptInt5);
        }
        if (jSONObject.has("support_mem_dynamic")) {
            int iOptInt6 = jSONObject.optInt("support_mem_dynamic", 0);
            if (iOptInt6 != 0 && iOptInt6 != 1) {
                iOptInt6 = 0;
            }
            aVarA.a("support_mem_dynamic", iOptInt6);
        }
        if (jSONObject.has("allow_blind_mode_request_ad")) {
            aVarA.a("allow_blind_mode_request_ad", jSONObject.optBoolean("allow_blind_mode_request_ad", false));
        }
        JSONObject jSONObjectOptJSONObject7 = jSONObject.optJSONObject("bus_con");
        if (jSONObjectOptJSONObject7 != null) {
            if (jSONObjectOptJSONObject7.has("bus_con_send_log_type")) {
                aVarA.a("bus_con_send_log_type", jSONObjectOptJSONObject7.optInt("bus_con_send_log_type", 1));
            }
            if (jSONObjectOptJSONObject7.has("bus_con_sec_type")) {
                aVarA.a("bus_con_sec_type", jSONObjectOptJSONObject7.optInt("bus_con_sec_type", Integer.MAX_VALUE));
            }
            if (jSONObjectOptJSONObject7.has("bus_con_dislike_report_raw")) {
                aVarA.a("bus_con_dislike_report_raw", jSONObjectOptJSONObject7.optBoolean("bus_con_dislike_report_raw", false));
            }
        }
        if (jSONObject.has("perf_con")) {
            try {
                JSONObject jSONObjectOptJSONObject8 = jSONObject.optJSONObject("perf_con");
                if (jSONObjectOptJSONObject8 != null) {
                    if (jSONObjectOptJSONObject8.has("perf_con_stats_rate")) {
                        String strOptString3 = jSONObjectOptJSONObject8.optString("perf_con_stats_rate");
                        if (!TextUtils.isEmpty(strOptString3)) {
                            aVarA.a("perf_con_stats_rate", strOptString3);
                        }
                    }
                    if (jSONObjectOptJSONObject8.has("perf_con_applog_send")) {
                        String strOptString4 = jSONObjectOptJSONObject8.optString("perf_con_applog_send");
                        if (!TextUtils.isEmpty(strOptString4)) {
                            aVarA.a("perf_con_applog_send", strOptString4);
                        }
                    }
                    if (jSONObjectOptJSONObject8.has("perf_con_apm_native")) {
                        aVarA.a("perf_con_apm_native", jSONObjectOptJSONObject8.optInt("perf_con_apm_native"));
                    }
                    if (jSONObjectOptJSONObject8.has("perf_con_webview_preload_cache")) {
                        aVarA.a("perf_con_webview_preload_cache", jSONObjectOptJSONObject8.optInt("perf_con_webview_preload_cache"));
                    }
                    if (jSONObjectOptJSONObject8.has("perf_con_webview_cache_count")) {
                        aVarA.a("perf_con_webview_cache_count", jSONObjectOptJSONObject8.optInt("perf_con_webview_cache_count", 0));
                    }
                    if (jSONObjectOptJSONObject8.has("perf_con_thread_stack_size") && (iOptInt = jSONObjectOptJSONObject8.optInt("perf_con_thread_stack_size")) >= -524288 && iOptInt <= 0) {
                        aVarA.a("perf_con_thread_stack_size", iOptInt);
                    }
                    if (jSONObjectOptJSONObject8.has("perf_con_use_prop")) {
                        s.a(jSONObjectOptJSONObject8.optInt("perf_con_use_prop", 1));
                    }
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.l.e("SettingsDefaultRepository", th2.getMessage());
            }
        }
        aVarA.a();
        o.aj().D();
    }
}
