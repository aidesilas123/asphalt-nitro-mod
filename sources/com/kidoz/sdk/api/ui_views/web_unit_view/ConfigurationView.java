package com.kidoz.sdk.api.ui_views.web_unit_view;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import com.kidoz.sdk.api.general.utils.SDKLogger;

/* JADX INFO: loaded from: classes4.dex */
public class ConfigurationView extends View {
    private final String TAG;
    private ConfigurationViewInterface mConfigurationViewInterface;

    public interface ConfigurationViewInterface {
        void onViewVisibilityChanged(boolean z);
    }

    public ConfigurationView(Context context, ConfigurationViewInterface configurationViewInterface) {
        super(context);
        this.TAG = ConfigurationView.class.getSimpleName();
        this.mConfigurationViewInterface = configurationViewInterface;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        SDKLogger.printDebugLog(this.TAG, "*** onConfigurationChanged ***");
        if (configuration.orientation == 2) {
            SDKLogger.printDebugLog(this.TAG, "New configuration: LANDSCAPE");
        } else {
            SDKLogger.printDebugLog(this.TAG, "New configuration: PORTRAIT");
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ConfigurationViewInterface configurationViewInterface = this.mConfigurationViewInterface;
        if (configurationViewInterface != null) {
            configurationViewInterface.onViewVisibilityChanged(false);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        SDKLogger.printDebugLog(this.TAG, "*** onVisibilityChanged ***");
        SDKLogger.printDebugLog(this.TAG, "Visibility = " + String.valueOf(i));
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        SDKLogger.printDebugLog(this.TAG, "*** onWindowFocusChanged ***");
        SDKLogger.printDebugLog(this.TAG, "Has window focus = " + Boolean.toString(z));
        ConfigurationViewInterface configurationViewInterface = this.mConfigurationViewInterface;
        if (configurationViewInterface != null) {
            configurationViewInterface.onViewVisibilityChanged(z);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        SDKLogger.printDebugLog(this.TAG, "*** onWindowVisibilityChanged ***");
        SDKLogger.printDebugLog(this.TAG, "Visibility = " + String.valueOf(i));
    }
}
