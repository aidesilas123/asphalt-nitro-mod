package com.mbridge.msdk.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.view.InputDeviceCompat;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ai;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class MBAlertDialog extends Dialog {
    private a a;
    private TextView b;
    private TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Button f7629d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Button f7630e;

    public MBAlertDialog(Context context, final a aVar) {
        super(context);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        requestWindowFeature(1);
        View viewInflate = LayoutInflater.from(context).inflate(t.a(context, "mbridge_cm_alertview", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
        this.a = aVar;
        if (viewInflate != null) {
            setContentView(viewInflate);
            try {
                this.b = (TextView) viewInflate.findViewById(t.a(context, "mbridge_video_common_alertview_titleview", "id"));
            } catch (Exception e2) {
                aa.a("MBAlertDialog", e2.getMessage());
            }
            try {
                this.c = (TextView) viewInflate.findViewById(t.a(context, "mbridge_video_common_alertview_contentview", "id"));
                this.f7629d = (Button) viewInflate.findViewById(t.a(context, "mbridge_video_common_alertview_confirm_button", "id"));
                this.f7630e = (Button) viewInflate.findViewById(t.a(context, "mbridge_video_common_alertview_cancel_button", "id"));
            } catch (Exception e3) {
                aa.a("MBAlertDialog", e3.getMessage());
            }
        }
        Button button = this.f7630e;
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.widget.dialog.MBAlertDialog.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.b();
                    }
                    MBAlertDialog.this.cancel();
                    MBAlertDialog.this.clear();
                }
            });
        }
        Button button2 = this.f7629d;
        if (button2 != null) {
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.widget.dialog.MBAlertDialog.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.c();
                    }
                    MBAlertDialog.this.cancel();
                    MBAlertDialog.this.clear();
                }
            });
        }
        setCanceledOnTouchOutside(false);
        setCancelable(false);
    }

    private void a(String str, String str2, String str3, String str4) {
        setTitle(str);
        setContent(str2);
        setConfirmText(str3);
        setCancelText(str4);
    }

    public void clear() {
        if (this.a != null) {
            this.a = null;
        }
    }

    public void hideNavigationBar(Window window) {
        if (window != null) {
            window.setFlags(1024, 1024);
            int i = Build.VERSION.SDK_INT;
            if (i >= 19) {
                window.addFlags(67108864);
                window.getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
            } else {
                window.getDecorView().setSystemUiVisibility(2);
            }
            if (i >= 28) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
            }
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setLayout(-1, -1);
            window.setGravity(17);
        }
    }

    public void makeIVAlertView(int i, String str) {
        try {
            String string = ai.b(getContext(), "MBridge_ConfirmTitle" + str, "").toString();
            String string2 = ai.b(getContext(), "MBridge_ConfirmContent" + str, "").toString();
            String string3 = ai.b(getContext(), "MBridge_CancelText" + str, "").toString();
            String string4 = ai.b(getContext(), "MBridge_ConfirmText" + str, "").toString();
            if (TextUtils.isEmpty(string) && TextUtils.isEmpty(string2) && TextUtils.isEmpty(string3) && TextUtils.isEmpty(string4)) {
                String language = Locale.getDefault().getLanguage();
                if (TextUtils.isEmpty(language) || !language.equals("zh")) {
                    setTitle(i == com.mbridge.msdk.foundation.same.a.o ? "Confirm" : "Tips");
                    setContent(i == com.mbridge.msdk.foundation.same.a.o ? "If you choose to continue, you will receive a reward after the end. Confirm closed?" : "If you choose to continue, you will receive a reward after the end. Whether to continue?");
                    setConfirmText(i == com.mbridge.msdk.foundation.same.a.o ? "Close" : "Cancel");
                    setCancelText("Continue");
                } else {
                    setTitle(i == com.mbridge.msdk.foundation.same.a.o ? "确认关闭？" : "提示");
                    setContent(i == com.mbridge.msdk.foundation.same.a.o ? "如果你选择继续，结束后将会获得奖励。确认关闭吗？" : "如果你选择继续，结束后将会获得奖励。是否继续？");
                    setConfirmText(i == com.mbridge.msdk.foundation.same.a.o ? "确认关闭" : "取消");
                    setCancelText("继续");
                }
            } else {
                a(string, string2, string3, string4);
            }
        } catch (Exception e2) {
            aa.a("MBAlertDialog", e2.getMessage());
        }
    }

    public void makePlayableAlertView() {
        e eVarB = f.a().b(b.d().h());
        if (eVarB != null) {
            a(eVarB.ad(), eVarB.ae(), eVarB.af(), eVarB.ah());
            return;
        }
        String language = Locale.getDefault().getLanguage();
        if (TextUtils.isEmpty(language) || !language.equals("zh")) {
            setTitle("Confirm to close? ");
            setContent("You will not be rewarded after closing the window");
            setConfirmText("Close it");
            setCancelText("Continue");
            return;
        }
        setTitle("确认关闭？");
        setContent("关闭后您将不会获得任何奖励噢~ ");
        setConfirmText("确认关闭");
        setCancelText("继续试玩");
    }

    public void makeRVAlertView(String str) {
        try {
            String string = ai.b(getContext(), "MBridge_ConfirmTitle" + str, "").toString();
            String string2 = ai.b(getContext(), "MBridge_ConfirmContent" + str, "").toString();
            String string3 = ai.b(getContext(), "MBridge_CancelText" + str, "").toString();
            String string4 = ai.b(getContext(), "MBridge_ConfirmText" + str, "").toString();
            e eVarB = f.a().b(b.d().h());
            if (TextUtils.isEmpty(string) && TextUtils.isEmpty(string2) && TextUtils.isEmpty(string3) && TextUtils.isEmpty(string4)) {
                if (eVarB != null) {
                    a(eVarB.ad(), eVarB.ae(), eVarB.af(), eVarB.ag());
                    return;
                }
                String language = Locale.getDefault().getLanguage();
                if (TextUtils.isEmpty(language) || !language.equals("zh")) {
                    setTitle("Confirm to close? ");
                    setContent("You will not be rewarded after closing the window");
                    setConfirmText("Close it");
                    setCancelText("Continue");
                    return;
                }
                setTitle("确认关闭？");
                setContent("关闭后您将不会获得任何奖励噢~ ");
                setConfirmText("确认关闭");
                setCancelText("继续观看");
                return;
            }
            String language2 = Locale.getDefault().getLanguage();
            if (TextUtils.isEmpty(string)) {
                if (eVarB != null) {
                    string = eVarB.ad();
                } else if (TextUtils.isEmpty(language2) || !language2.equals("zh")) {
                    setTitle("Confirm to close? ");
                } else {
                    setTitle("确认关闭？");
                }
            }
            if (TextUtils.isEmpty(string2)) {
                if (eVarB != null) {
                    string2 = eVarB.ae();
                } else if (TextUtils.isEmpty(language2) || !language2.equals("zh")) {
                    setContent("You will not be rewarded after closing the window");
                } else {
                    setContent("关闭后您将不会获得任何奖励噢~ ");
                }
            }
            if (TextUtils.isEmpty(string4)) {
                if (eVarB != null) {
                    string4 = eVarB.af();
                } else if (TextUtils.isEmpty(language2) || !language2.equals("zh")) {
                    setConfirmText("Close it");
                } else {
                    setConfirmText("确认关闭");
                }
            }
            if (TextUtils.isEmpty(string3)) {
                if (eVarB != null) {
                    string3 = eVarB.ag();
                } else if (TextUtils.isEmpty(language2) || !language2.equals("zh")) {
                    setCancelText("Continue");
                } else {
                    setCancelText("继续观看");
                }
            }
            a(string, string2, string4, string3);
        } catch (Exception e2) {
            aa.a("MBAlertDialog", e2.getMessage());
        }
    }

    public void setCancelText(String str) {
        Button button = this.f7630e;
        if (button != null) {
            button.setText(str);
        }
    }

    public void setConfirmText(String str) {
        Button button = this.f7629d;
        if (button != null) {
            button.setText(str);
        }
    }

    public void setContent(String str) {
        TextView textView = this.c;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setTitle(String str) {
        TextView textView = this.b;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        try {
            getWindow().setFlags(8, 8);
            super.show();
            hideNavigationBar(getWindow());
            getWindow().clearFlags(8);
        } catch (Exception e2) {
            aa.d("MBAlertDialog", e2.getMessage());
            super.show();
        }
    }
}
