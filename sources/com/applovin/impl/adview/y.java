package com.applovin.impl.adview;

import android.annotation.TargetApi;
import android.webkit.WebSettings;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class y {
    private final JSONObject aiq;

    public y(JSONObject jSONObject) {
        this.aiq = jSONObject;
    }

    @Nullable
    @TargetApi(21)
    Integer si() {
        String string = JsonUtils.getString(this.aiq, "mixed_content_mode", null);
        if (StringUtils.isValidString(string)) {
            if ("always_allow".equalsIgnoreCase(string)) {
                return 0;
            }
            if ("never_allow".equalsIgnoreCase(string)) {
                return 1;
            }
            if ("compatibility_mode".equalsIgnoreCase(string)) {
                return 2;
            }
        }
        return null;
    }

    @Nullable
    WebSettings.PluginState sj() {
        String string = JsonUtils.getString(this.aiq, "plugin_state", null);
        if (StringUtils.isValidString(string)) {
            if ("on".equalsIgnoreCase(string)) {
                return WebSettings.PluginState.ON;
            }
            if ("on_demand".equalsIgnoreCase(string)) {
                return WebSettings.PluginState.ON_DEMAND;
            }
            if ("off".equalsIgnoreCase(string)) {
                return WebSettings.PluginState.OFF;
            }
        }
        return null;
    }

    @Nullable
    Boolean sk() {
        return JsonUtils.getBoolean(this.aiq, "allow_file_access", null);
    }

    @Nullable
    Boolean sl() {
        return JsonUtils.getBoolean(this.aiq, "load_with_overview_mode", null);
    }

    @Nullable
    Boolean sm() {
        return JsonUtils.getBoolean(this.aiq, "use_wide_view_port", null);
    }

    @Nullable
    Boolean sn() {
        return JsonUtils.getBoolean(this.aiq, "allow_content_access", null);
    }

    @Nullable
    Boolean so() {
        return JsonUtils.getBoolean(this.aiq, "use_built_in_zoom_controls", null);
    }

    @Nullable
    Boolean sp() {
        return JsonUtils.getBoolean(this.aiq, "display_zoom_controls", null);
    }

    @Nullable
    Boolean sq() {
        return JsonUtils.getBoolean(this.aiq, "save_form_data", null);
    }

    @Nullable
    Boolean sr() {
        return JsonUtils.getBoolean(this.aiq, "geolocation_enabled", null);
    }

    @Nullable
    Boolean ss() {
        return JsonUtils.getBoolean(this.aiq, "need_initial_focus", null);
    }

    @Nullable
    Boolean st() {
        return JsonUtils.getBoolean(this.aiq, "allow_file_access_from_file_urls", null);
    }

    @Nullable
    Boolean su() {
        return JsonUtils.getBoolean(this.aiq, "allow_universal_access_from_file_urls", null);
    }

    @Nullable
    Boolean sv() {
        return JsonUtils.getBoolean(this.aiq, "offscreen_pre_raster", null);
    }

    @Nullable
    Boolean sw() {
        return JsonUtils.getBoolean(this.aiq, "algorithmic_darkening_allowed", null);
    }

    @Nullable
    Boolean sx() {
        return JsonUtils.getBoolean(this.aiq, "loads_images_automatically", null);
    }

    @Nullable
    Boolean sy() {
        return JsonUtils.getBoolean(this.aiq, "block_network_image", null);
    }
}
