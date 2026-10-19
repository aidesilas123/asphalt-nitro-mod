package com.bytedance.sdk.component.e.a.c;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.e.a.b.d;
import com.bytedance.sdk.component.e.a.f;
import com.bytedance.sdk.component.e.a.i;
import com.google.android.gms.ads.AdError;
import com.json.o2;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: EventDebugUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static final LinkedList<String> a = new LinkedList<>();
    private static final LinkedList<String> b = new LinkedList<>();
    private static final LinkedList<String> c = new LinkedList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final LinkedList<String> f1023d = new LinkedList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<String, Integer> f1024e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static HashMap<String, Integer> f1025f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f1026g = "upload_init";
    private static int h = 0;
    private static int i = 0;

    public static String a(int i2) {
        switch (i2) {
            case 1:
                return "flush once";
            case 2:
                return "flush memory db";
            case 3:
                return "flush memory";
            case 4:
                return "new event";
            case 5:
                return "server busy";
            case 6:
                return "empty message";
            case 7:
                return "net error";
            default:
                return "default";
        }
    }

    public static String a(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (aVar == null || aVar.g() == null || c()) {
            return null;
        }
        return aVar.b() == 3 ? aVar.g().optString(NotificationCompat.CATEGORY_EVENT) : aVar.g().optString("label");
    }

    public static void a() {
        if (f1025f != null) {
            return;
        }
        String[] strArr = {"first_view", "open_splash", "ad_landing_webview_init", "show_failed_topview", "adstyle_template_show", "splash_init_monitor_first", "download_video_succeed", "shake_skip", "receive", "video_over_auto", "render_time", "splash_ad", "preload_start", CampaignEx.JSON_NATIVE_VIDEO_MUTE, "covered", "download_image_failed", "splash_init_monitor_all", "preload_success_time", "download_video_start_sdk", "download_video_count", "not_showing_reason", "download_image_succeed", "load_video_success", "launch_covered", "download_video_prepare", "download_video_start", "boarding", "ad_wap_stat", "splash_pick", "preload_fail", "should_show", "adstyle_template_fill", CampaignEx.JSON_NATIVE_VIDEO_UNMUTE, "preload_success", "show_failed", "stop_showing_monitor", "download_video_no_download", "track_url", "download_creative_duration", "adstyle_template_render", "download_video_count_splash_sdk", "landing_preload_finish", "adstyle_template_load", "load_ad_duration", "client_false_show", "client_false", "download_video_failed", "data_invalid", "topview_boarding", "topview_start_download", "topview_show_confirmed", "splash_start_download", "topview_show_rejected", "splash_no_download", "redownload_video_count", "topview_other_show", "topview_no_download", "ad_selected", "invalid_model", "topview_deliver", "ad_no_selected", "topview_ad_download_retry_label", "request", com.json.mediationsdk.utils.c.Y1, "parse_finished", "front_performance", "ad_resp", "ad_resp_nodata", "preload_finish", "transit_show", "splash_switch", "block_splash_F2", "render_picture_time", KidozParams.NETWORK_TYPE, "play_start_error", "load_video_error", "render_picture_timeout", "py_loading_success", "download_status", "first_screen_load_finish", "landing_preload_failed", "data_received", "preload_result", "show_result", "reponse", "valid_time", "brand_satefy_context", "topview_ad_link_fail_label", "end_feed_request", "start_feed_request", "set_feed_data", "delayinstall_conflict_with_back_dialog", "clean_fetch_apk_head_failed", "cleanspace_download_after_quite_clean", "fps_too_low", "open_policy", "landing_perf_stats", "preload_topview", "show_effect_start", "dislike_monitor", "hour_show", "hour_skip", "triggered", "click_sound_switch", "enter_loft", "download_resume", "install_view_result", "contiguous_ad_event", "contiguous_ad_remove_event", "report_monitor", "open_landing_blank", "dynamic_ad", "report_load_failed", "ad_download_failed", "download_video_start_first_sdk", "splash_receive", "video_play", "clean_fetch_apk_head_switch_close", "label_external_permission", "pause_reserve_wifi_switch_status", "landing_download_dialog_show", "download_connect", "download_uncompleted", "pause_reserve_wifi_dialog_show", "download_io", "pause_reserve_wifi_confirm", "skvc_load_time", "segment_io", "click_no", "pause_reserve_wifi_cancel_on_wifi", "udp_stop", "mma_url", "error_save_sp", "download_notification_try_show", "ttd_pref_monitor", "item_above_the_fold_stay_time", "ttdownloader_unity", "bdad_query_log", "bdad_load_finish", "bdad_load", "bdad_load_fail", AdError.UNDEFINED_DOMAIN, "valid_stock", "show_filter", "splash_pk_result", "endcard_page_info", "page_on_create", "statistics_feed_docker", "show_search_card_word", "ad_new_video_render_start_label", "ad_new_video_play_start_label", "ad_new_video_ad_patch_data_set_null_label", "ad_new_video_ad_patch_play_label", "ad_new_video_ad_patch_render_label", "debug_touch_start", "try_second_request", "egg_unzip_success", "tap_2", "anti_0_result", "anti_2_result", "egg_unzip_no_start", "preload_no_start", "bind_impression_212202", "guide_auth_dialog_cancel", "show_im_entry", "sub_reco_impression_v2", "sync_request_log_mask", "no_send_sync_request", "load_timeout", "send_sync_request", "sync_request_not_show", "show_subv_tt_video_food", "track", "custom_event", "rd_landing_page_stat", "update_local_data", "showlimit", "upload_result", "debug_othershow", "debug_otherclick", "ad_show_time", "push_launch", "union_send_duplicate", "mnpl_js_finish_load", "mnpl_resource_finish_load", "mnpl_material_render_timeout", "mnpl_render_timing", "mnpl_vedio_interactive_timegap", "click_non_rectify_area", "start_impression", "end_impression", "picture_render_time", "splash_stop_show", "skip_post", "skan_show_start", "skan_show_end", "load_video_start", "rifle_ad_monitor", "download_video_redownload", "splash_video_quality", "splash_video_end", "splash_video_pause", "splash_video_failed", "adtrace_start_clear", "adtrace_clear_past_data", "adtrace_end_clear", "adtrace_write_success", "adtrace_write_failed", "adtrace_read_result", "adtrace_read_success", "adtrace_read_failed", "pick_model", "cache_model", "adtrace_reparse_file", "deeplink_failed_all", "ad_live_degenerate", "ad_live_miss", "live_play_fail", "sko_show_success", "sko_show_fail", "commerce_apps_open", "commerce_apps_jump", "pic_card_show", "live_ad_card_render_finish", "adtrace_select", "received_card_status", "live_ad_page_load_success", "mp_download_result", "download_video_cancel", "jump_count", "adtrace_try_show", "show_cart_entrance", "live_ad_page_load_fail", "click_interacted", "pop_up", "pop_up_cancel", "stream_loadtime", "mnpl_guide_comp_render", "thirdquartile", "customer_feed_pause", "customer_play_start", "customer_feed_break", "click_area_log", "customer_feed_continue", "customer_feed_play", "mnpl_resource_start_preload", "mnpl_resource_finish_preload", "customer_feed_over", "get_preload_ad", "web_inspect_status", "web_report_status", "preload_begin", "preload_end", "open_begin", "open_end", "pangle_live_sdk_monitor", "success", "rifle_load_state", "rifle_uri_load_state", "component_init", "component_release", "ad_lynx_download_sendAdLog", "dynamic2_render", "lynx_card_show", "pop_up_download", "live_shelf_commodity_show", "unity_fe_click", "enter_ads_explain", "adx_ads_switch", "personal_ads_switch", "qc_product_picture_cancel", "qc_product_picture_save", "qc_product_picture_press", "qc_product_detail_show", "qc_price_instruction_click", "qc_edit_sku_num_click", "service_description_page_duration", "enter_business_qualification_page ", "service_description_page_show", "order_words_fe", "qc_payment_mode_show", "qc_click_ali_pay", "qc_district_addr_click", "qc_auto_information_add", "qc_dial_consult_cancel_btn_click", "qc_dial_consult_show", "qc_maomadeng_click", "qc_maomadeng_show", "slide_product_big_picture", "qc_service_description_close", "appstore_manager_request", "preload_video_result", "preload_video_start", "adtrace_bind", "topview_ad_link_match_event", "skip_leisure_interact_render", "click_start_download", "ad_lynx_landing_page_exception", "lynx_page_res_download_monitor_event", "live_fail", "live_over", "render_live_picture_success", "render_live_picture_fail", "live_play_success", "live_play_close", "item_play_pver", "ad_gap_info", "item_play_over", "has_period_first_chance", "enter_live_auto", "mnpl_material_video_scene_show", "ad_rerank", "in_web_click", "post_request_failed", "destroy", "bidding_load", "bidding_receive", "in_web_scroll", "tobsdk_livesdk_live_show", "xigua_ad_rerank", "applink_unity", "top_ad_show", "top_button_show", "skip_button_show", "skip_click", "shake_show", "skip_result", "show_personal_compliance_button_click", "personal_compliance_click", "ad_click_result", "ad_preload_video", "popup_show", "topview_feed_down", "qr_scan", "qr_show", "topview_popup_show", "topview_feed_over", "topview_feed_show", "feed_down", "engine_ad_send", "permission_click", "policy_click", "download_start_click", "mini_playable_style_report", "load_detect", "aweme_show_info", "click_convert_anchor_detail_page", "click_anchor_gift_button", "show_anchor_gift_page", "click_anchor_gift_card", "show_anchor_gift_card", "anchor_convert_button", "show_anchor_page", "search_result_click", "sdk_session_launch", "not_use_app_link_sdk", "click_ios_check", "auto_open", "bind_click_area", "page_load", "show_finish", "next_fresh", "play_ready", "splash_pk_time", "unshow", "feed_show_failed", "othershow_cancel", "lu_cache", "realtime_splash_result", "channel_override_result", "internal_jump_live_status", "mnpl_video_play_backward", "splash_enter_foreground", "splash_enter_background", "button_light", "long_press", "webview_material_missing_key_error", "live_life_project_click_card", "mnpl_click_event", "show_anchor_convert_button", "bdar_log_info", "bdar_ad_request", "bdar_lynx_template_load_time", "bdar_lynx_fallback", "bdar_fetch_template_data", "bdar_lynx_render_time", "bdar_video_play_effective", "bdar_video_first_frame", "bdar_lynx_jsb_error", "invalidate_back_url_monitor_event", "lynx_page_plugin_exception_event", "live_custom_interaction", "pinch", "if_splash_card", "splash_card_show", "card_show_fail", "splash_card_click", "splash_card_close", "wind_icon_click", "excluded", "show_error", "toutiao_ad_receive", "show_ad", "toutiao_ad_excluded", "close_card", "lynx_status", "qpon_join", "apk_download_user", "comment_key_word_show", "v3_show_ad", "show_wish_button", "enterSection", "single_comment_show", "enter_product_detail", "xigua_ad_request", "qpon_apply", "splash_total_duration", "splash_render_duration", "download_template_duration", "homepage_hot", "homepage_follow", "homepage_fresh", "video_play_success", "general_search", "video_render_cost", "single_ad_render_cost", "unexpected_accurate_pause", "mnpl_interact_skip", "web_report_request_url", "web_report_init_status", "first_request", "video_ended", "mnpl_script_error", "open_wechat_failed_shake", "open_wechat_shacke", "open_wechat_success_shake", "options_popup", "close_pers_ads_type", "check_closed_type", "ad_guide_panel", "learn_ads", "learn_adx_ads", "learn_pers_ads", "resume_closed_type", "twist", "open_wechat_shake"};
        f1025f = new HashMap<>(446);
        for (int i2 = 0; i2 < 446; i2++) {
            f1025f.put(strArr[i2], 1);
        }
    }

    public static void a(int i2, List<com.bytedance.sdk.component.e.a.d.a> list, long j) {
        if (i.g().p().h()) {
            long jCurrentTimeMillis = System.currentTimeMillis() - j;
            c.a("uploadCost:" + jCurrentTimeMillis);
            if (i2 == 200) {
                com.bytedance.sdk.component.e.a.b.a.a aVar = d.f1019d;
                aVar.ag().getAndAdd(jCurrentTimeMillis);
                aVar.ae().incrementAndGet();
                aVar.ab().getAndAdd(list.size());
                aVar.M().getAndAdd(list.size());
                return;
            }
            c.d("-------AdThread code is " + i2 + " error  ------------");
            if (i2 == -1) {
                d.f1019d.ac().getAndAdd(list.size());
            } else {
                d.f1019d.Q().getAndAdd(list.size());
            }
            com.bytedance.sdk.component.e.a.b.a.a aVar2 = d.f1019d;
            aVar2.ah().getAndAdd(jCurrentTimeMillis);
            aVar2.af().incrementAndGet();
        }
    }

    private static void a(com.bytedance.sdk.component.e.a.d.a aVar, String str, f fVar) {
        String strA = a(aVar);
        if (a(strA)) {
            return;
        }
        String strE = e(aVar);
        if (aVar.d() == 0 && fVar.a()) {
            d(strA + "_" + i(aVar) + "_" + strE + "_" + str);
        }
    }

    public static void a(List<com.bytedance.sdk.component.e.a.d.a> list, int i2) {
        try {
            if (i.g().p().h()) {
                for (com.bytedance.sdk.component.e.a.d.a aVar : list) {
                    if (aVar != null && aVar.i() != 0) {
                        long jCurrentTimeMillis = System.currentTimeMillis() - aVar.i();
                        com.bytedance.sdk.component.e.a.b.a.a aVar2 = d.f1019d;
                        aVar2.R().incrementAndGet();
                        aVar2.W().getAndAdd(jCurrentTimeMillis);
                        aVar.c(System.currentTimeMillis());
                    }
                    if (aVar != null) {
                        f(aVar);
                    }
                }
                d.f1019d.T().getAndAdd(list.size());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(List<com.bytedance.sdk.component.e.a.d.a> list, int i2, String str) {
        f fVarP = i.g().p();
        if (fVarP == null || !fVarP.b() || list == null || c()) {
            return;
        }
        boolean z = false;
        StringBuilder sb = new StringBuilder();
        for (com.bytedance.sdk.component.e.a.d.a aVar : list) {
            if (aVar.d() == 0) {
                JSONObject jSONObjectG = aVar.g();
                String strA = a(aVar);
                if (aVar.b() == 3) {
                    if (jSONObjectG != null) {
                        strA = jSONObjectG.optString(NotificationCompat.CATEGORY_EVENT);
                    }
                    sb.append(" [v3:");
                    sb.append(strA);
                    sb.append("] ");
                } else {
                    long jH = h(aVar);
                    long jI = i(aVar);
                    int iD = d(aVar);
                    sb.append(" [");
                    sb.append(jH);
                    sb.append("_");
                    sb.append(strA);
                    if (jI != 0) {
                        sb.append("_");
                        sb.append(jI);
                    }
                    if (iD == 0) {
                        sb.append("] ");
                    } else {
                        sb.append("_");
                        sb.append(iD);
                        sb.append("] ");
                    }
                }
                z = true;
            } else if (aVar.d() == 1) {
                String strB = b(aVar);
                int iC = c(aVar);
                sb.append(" [");
                sb.append(iC);
                sb.append("_");
                sb.append(strB);
                sb.append("] ");
            }
        }
        if (z) {
            c.c("_upload", "ads:" + ((Object) sb) + a(i2) + "," + str + ",total:" + list.size());
            return;
        }
        c.c("_upload", "stats:" + ((Object) sb) + a(i2) + "," + str + ",total:" + list.size());
    }

    public static void a(List<com.bytedance.sdk.component.e.a.d.a> list, String str) {
        try {
            f fVarP = i.g().p();
            if (fVarP == null || !fVarP.h() || list == null) {
                return;
            }
            for (com.bytedance.sdk.component.e.a.d.a aVar : list) {
                if (aVar != null) {
                    a(aVar, str, fVarP);
                }
            }
        } catch (Exception e2) {
            c.d(e2.getMessage());
        }
    }

    public static void a(JSONObject jSONObject, com.bytedance.sdk.component.e.a.d.a.a aVar) {
        f fVarP = i.g().p();
        if (fVarP != null && fVarP.b() && e()) {
            c.a("log_show_query :" + jSONObject.optString("label") + " " + ((int) aVar.e()));
        }
    }

    public static void a(boolean z, int i2, com.bytedance.sdk.component.e.a.d.a aVar) {
        f fVarP = i.g().p();
        if (c() || fVarP == null || !fVarP.b()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("needUpload:");
        sb.append(z);
        sb.append(",message:");
        sb.append(a(i2));
        String strB = b(aVar);
        if (!TextUtils.isEmpty(strB)) {
            sb.append(",type:");
            sb.append(strB);
        }
        String strA = a(aVar);
        if (!TextUtils.isEmpty(strA)) {
            sb.append(",label:");
            sb.append(strA);
        }
        c.c("_save", sb.toString());
    }

    public static boolean a(String str) {
        HashMap<String, Integer> map = f1025f;
        if (map == null || str == null) {
            return false;
        }
        return map.containsKey(str);
    }

    public static String b(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (aVar == null || aVar.g() == null || c()) {
            return null;
        }
        return aVar.g().optString("type");
    }

    private static synchronized String b(String str) {
        StringBuilder sb;
        LinkedList<String> linkedList = b;
        if (linkedList.size() >= 10) {
            linkedList.removeFirst();
            linkedList.add(str);
        } else {
            linkedList.add(str);
        }
        sb = new StringBuilder();
        Iterator<String> it = linkedList.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(",");
        }
        return sb.toString();
    }

    public static boolean b() {
        f fVarP = i.g().p();
        return fVarP != null && fVarP.g() == 0;
    }

    public static int c(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (aVar == null || aVar.g() == null || !b()) {
            return -1;
        }
        try {
            return new JSONObject(aVar.g().optString("event_extra")).optInt("stats_index");
        } catch (JSONException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    private static synchronized String c(String str) {
        StringBuilder sb;
        LinkedList<String> linkedList = c;
        if (linkedList.size() >= 10) {
            linkedList.removeFirst();
            linkedList.add(str);
        } else {
            linkedList.add(str);
        }
        sb = new StringBuilder();
        Iterator<String> it = linkedList.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(",");
        }
        return sb.toString();
    }

    public static boolean c() {
        f fVarP = i.g().p();
        return fVarP != null && fVarP.g() == 2;
    }

    public static synchronized int d(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (aVar != null) {
            if (aVar.g() != null) {
                if (!b()) {
                    return 0;
                }
                try {
                    return new JSONObject(aVar.g().optString("ad_extra_data")).optInt("sdk_event_self_count");
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return 0;
                }
            }
        }
        return 0;
    }

    private static synchronized void d(String str) {
        LinkedList<String> linkedList = f1023d;
        if (linkedList.size() >= 10) {
            linkedList.removeFirst();
            linkedList.add(str);
        } else {
            linkedList.add(str);
        }
    }

    public static boolean d() {
        f fVarP = i.g().p();
        return fVarP != null && fVarP.g() == 1;
    }

    public static String e(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (aVar == null || aVar.g() == null || c()) {
            return null;
        }
        String strOptString = aVar.g().optString("log_extra");
        if (!TextUtils.isEmpty(strOptString)) {
            try {
                return new JSONObject(strOptString).optString("req_id");
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static boolean e() {
        return b() || d();
    }

    private static synchronized String f() {
        StringBuilder sb;
        sb = new StringBuilder();
        Iterator<String> it = f1023d.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(",");
        }
        return sb.toString();
    }

    public static void f(com.bytedance.sdk.component.e.a.d.a aVar) {
        try {
            if (aVar.d() == 0 && i.g().p() != null && i.g().p().a()) {
                JSONObject jSONObjectG = aVar.g();
                String strA = a(aVar);
                if (a(strA)) {
                    return;
                }
                e(aVar);
                String strOptString = jSONObjectG.optString("ad_extra_data");
                if (TextUtils.isEmpty(strOptString)) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("will_send_labels", c(strA + "_" + i(aVar)));
                    jSONObject.put("send_success_valid_labels", f());
                    jSONObjectG.put("ad_extra_data", jSONObject.toString());
                    return;
                }
                JSONObject jSONObject2 = new JSONObject(strOptString);
                if (TextUtils.isEmpty(jSONObject2.optString("will_send_labels"))) {
                    jSONObject2.put("will_send_labels", c(strA + "_" + i(aVar)));
                    jSONObject2.put("send_success_valid_labels", f());
                }
                jSONObjectG.put("ad_extra_data", jSONObject2.toString());
            }
        } catch (Exception e2) {
            c.d(e2.getMessage());
        }
    }

    public static void g(com.bytedance.sdk.component.e.a.d.a aVar) {
        try {
            if (i.g().p().h()) {
                d.f1019d.a(System.currentTimeMillis() - aVar.h());
                aVar.b(System.currentTimeMillis());
                if (aVar.d() == 0 && i.g().p() != null && i.g().p().a()) {
                    String strA = a(aVar);
                    if (a(strA)) {
                        return;
                    }
                    JSONObject jSONObjectG = aVar.g();
                    String strOptString = aVar.g().optString("ad_extra_data");
                    if (TextUtils.isEmpty(strOptString)) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("save_success_labels", b(strA + "_" + i(aVar)));
                        jSONObjectG.put("ad_extra_data", jSONObject.toString());
                        return;
                    }
                    JSONObject jSONObject2 = new JSONObject(strOptString);
                    if (TextUtils.isEmpty(jSONObject2.optString("save_success_labels"))) {
                        jSONObject2.put("save_success_labels", b(strA + "_" + i(aVar)));
                    }
                    jSONObjectG.put("ad_extra_data", jSONObject2.toString());
                }
            }
        } catch (Exception unused) {
        }
    }

    public static long h(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (aVar == null || aVar.g() == null || !b()) {
            return 0L;
        }
        try {
            return new JSONObject(aVar.g().optString("ad_extra_data")).optLong("sdk_event_index");
        } catch (Exception e2) {
            c.d(e2.getMessage());
            return 0L;
        }
    }

    public static long i(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (aVar == null || aVar.g() == null || !b()) {
            return 0L;
        }
        try {
            return new JSONObject(aVar.g().optString("ad_extra_data")).optLong("sdk_event_valid_index");
        } catch (Exception e2) {
            c.d(e2.getMessage());
            return 0L;
        }
    }

    public static void j(com.bytedance.sdk.component.e.a.d.a aVar) {
        try {
            if (b()) {
                f fVarP = i.g().p();
                if (!TextUtils.isEmpty(aVar.c())) {
                    b.a(d.f1019d.Y(), 1);
                }
                if (fVarP == null || !fVarP.b()) {
                    return;
                }
                if (aVar.d() == 1) {
                    c.c("_delete", "stats,[type:" + b(aVar) + ",index:" + c(aVar) + ",localId:" + aVar.c() + ",sessionId:" + k(aVar) + o2.i.f6491e);
                    return;
                }
                if (aVar.d() == 0) {
                    if (aVar.b() == 3) {
                        if (aVar.g() == null) {
                            c.c("_delete", "v3_error");
                            return;
                        }
                        String strOptString = aVar.g().optString(NotificationCompat.CATEGORY_EVENT);
                        StringBuilder sb = new StringBuilder();
                        sb.append("v3,[");
                        sb.append("label:");
                        sb.append(strOptString);
                        long jH = h(aVar);
                        if (jH != 0) {
                            sb.append(", index:");
                            sb.append(jH);
                        }
                        long jI = i(aVar);
                        if (jI != 0) {
                            sb.append(", validIndex:");
                            sb.append(jI);
                        }
                        sb.append(", localId:");
                        sb.append(aVar.c());
                        sb.append(", sessionId:");
                        sb.append(k(aVar));
                        sb.append(o2.i.f6491e);
                        c.c("_delete", sb.toString());
                        return;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    long jI2 = i(aVar);
                    if (jI2 != 0) {
                        sb2.append("v1_core [");
                        sb2.append("label:");
                        sb2.append(a(aVar));
                    } else {
                        sb2.append("v1_debug [");
                        sb2.append("label:");
                        sb2.append(a(aVar));
                    }
                    long jH2 = h(aVar);
                    if (jH2 != 0) {
                        sb2.append(", index:");
                        sb2.append(jH2);
                    }
                    if (jI2 != 0) {
                        sb2.append(", validIndex:");
                        sb2.append(jI2);
                    }
                    sb2.append(", localId:");
                    sb2.append(aVar.c());
                    sb2.append(", sessionId:");
                    sb2.append(k(aVar));
                    sb2.append(o2.i.f6491e);
                    c.c("_delete", sb2.toString());
                }
            }
        } catch (Exception e2) {
            c.d(e2.getMessage());
        }
    }

    private static String k(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (aVar == null || aVar.g() == null || !b()) {
            return null;
        }
        JSONObject jSONObjectG = aVar.g();
        try {
            return new JSONObject(aVar.d() == 1 ? jSONObjectG.optString("event_extra") : jSONObjectG.optString("ad_extra_data")).optString("sdk_session_id");
        } catch (JSONException e2) {
            c.d(e2.getMessage());
            return null;
        }
    }
}
