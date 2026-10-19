package com.kidoz.sdk.api.general;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.Utils;

/* JADX INFO: loaded from: classes4.dex */
public class BaseDialog extends Dialog {
    private final String TAG;
    protected Activity mCallingActivity;
    protected int mCurrentOrientationState;
    private long mDisplayDuration;
    private boolean mIsAllowedToChangeOrientation;
    protected boolean mIsWaitingToOpen;
    private Utils.StaticHandler mStaticHandler;

    public class ConfigurationHelperView extends View {
        public ConfigurationHelperView(Context context) {
            super(context);
        }

        @Override // android.view.View
        protected void onConfigurationChanged(Configuration configuration) {
            super.onConfigurationChanged(configuration);
            if (configuration.orientation == 2) {
                BaseDialog.this.onDialogOrientationChange(false);
            } else {
                BaseDialog.this.onDialogOrientationChange(true);
            }
        }

        @Override // android.view.View
        protected void onVisibilityChanged(View view, int i) {
            super.onVisibilityChanged(view, i);
            BaseDialog.this.onDialogVisibilityChange(i);
        }

        @Override // android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            BaseDialog.this.onDialogFocusChange(z);
        }

        @Override // android.view.View
        protected void onWindowVisibilityChanged(int i) {
            super.onWindowVisibilityChanged(i);
            if (i == 0) {
                BaseDialog.this.onDialogWindowVisibilityChange(true);
            } else if (i == 8 || i == 4) {
                BaseDialog.this.onDialogWindowVisibilityChange(false);
            }
        }
    }

    private class DialogException extends Exception {
        private static final long serialVersionUID = 1;

        private DialogException() {
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return "Don't use the show() method\nUse openDialog() instead!";
        }
    }

    public BaseDialog(Context context) {
        super(context);
        this.TAG = BaseDialog.class.getSimpleName();
        this.mCurrentOrientationState = -1;
        initDialog(context, false);
    }

    public BaseDialog(Context context, int i) {
        super(context, i);
        this.TAG = BaseDialog.class.getSimpleName();
        this.mCurrentOrientationState = -1;
        initDialog(context, false);
    }

    public BaseDialog(Context context, int i, boolean z) {
        super(context, i);
        this.TAG = BaseDialog.class.getSimpleName();
        this.mCurrentOrientationState = -1;
        initDialog(context, z);
    }

    private void initConfigurationHelperView(View view) {
        if (view instanceof ViewGroup) {
            ((ViewGroup) view).addView(new ConfigurationHelperView(getContext()));
        }
    }

    private void initDialog(Context context, boolean z) {
        if (context != null) {
            try {
                if (context instanceof Activity) {
                    this.mCallingActivity = (Activity) context;
                } else if (context instanceof ContextWrapper) {
                    this.mCallingActivity = (Activity) ((ContextWrapper) context).getBaseContext();
                }
            } catch (Exception unused) {
            }
        }
        this.mIsAllowedToChangeOrientation = z;
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.kidoz.sdk.api.general.BaseDialog.1
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                Activity activity = BaseDialog.this.mCallingActivity;
                if (activity == null || activity.isFinishing() || !BaseDialog.this.mIsAllowedToChangeOrientation) {
                    return;
                }
                BaseDialog.this.restoreUserOriginalOrientation();
            }
        });
    }

    public void closeDialog() {
        Activity activity = this.mCallingActivity;
        if (activity == null || activity.isFinishing()) {
            return;
        }
        dismiss();
    }

    public boolean getIsCanOpen() {
        return false;
    }

    protected Utils.StaticHandler getMyHandlerInstance() {
        if (this.mStaticHandler == null) {
            this.mStaticHandler = new Utils.StaticHandler(Looper.getMainLooper()) { // from class: com.kidoz.sdk.api.general.BaseDialog.2
                @Override // com.kidoz.sdk.api.general.utils.Utils.StaticHandler, android.os.Handler
                public void handleMessage(Message message) {
                }
            };
        }
        return this.mStaticHandler;
    }

    public int getTotalDisplayDuration() {
        return (int) ((System.currentTimeMillis() - this.mDisplayDuration) / 1000);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mIsAllowedToChangeOrientation) {
            restoreUserOriginalOrientation();
        }
    }

    protected void onDialogFocusChange(boolean z) {
    }

    protected void onDialogOrientationChange(boolean z) {
    }

    protected void onDialogVisibilityChange(int i) {
    }

    protected void onDialogWindowVisibilityChange(boolean z) {
    }

    public void openDialog() {
        Activity activity = this.mCallingActivity;
        if (activity == null || activity.isFinishing() || isShowing()) {
            return;
        }
        if (getWindow() != null) {
            getWindow().setFlags(8, 8);
            getWindow().getDecorView().setSystemUiVisibility(this.mCallingActivity.getWindow().getDecorView().getSystemUiVisibility());
        }
        this.mDisplayDuration = System.currentTimeMillis();
        super.show();
        if (getWindow() != null) {
            getWindow().clearFlags(8);
        }
        ((WindowManager) this.mCallingActivity.getSystemService("window")).updateViewLayout(getWindow().getDecorView(), getWindow().getAttributes());
        if (this.mIsAllowedToChangeOrientation) {
            saveUserOriginalOrientation();
            this.mCallingActivity.setRequestedOrientation(4);
        }
    }

    public void restoreUserOriginalOrientation() {
        this.mCallingActivity.setRequestedOrientation(this.mCurrentOrientationState);
    }

    public void saveUserOriginalOrientation() {
        Activity activity = this.mCallingActivity;
        if (activity == null || activity.isFinishing()) {
            return;
        }
        this.mCurrentOrientationState = this.mCallingActivity.getRequestedOrientation();
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(view);
        initConfigurationHelperView(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        initConfigurationHelperView(view);
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            throw new DialogException();
        } catch (Exception e2) {
            SDKLogger.printErrorLog(this.TAG, "Error when trying to open dialog: " + e2.getMessage());
        }
    }
}
