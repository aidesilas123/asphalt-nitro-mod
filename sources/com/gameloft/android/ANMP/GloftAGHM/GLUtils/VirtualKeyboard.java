package com.gameloft.android.ANMP.GloftAGHM.GLUtils;

import android.app.Activity;
import android.text.InputFilter;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.gameloft.android.ANMP.GloftAGHM.PackageUtils.JNIBridge;

/* JADX INFO: loaded from: classes2.dex */
public class VirtualKeyboard extends EditText implements View.OnFocusChangeListener {
    static VirtualKeyboard a;
    static Activity b;
    static ViewGroup c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static View f2803d;

    class a implements Runnable {
        final /* synthetic */ String b;

        a(String str) {
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VirtualKeyboard.isKeyboardVisible()) {
                VirtualKeyboard.this.setText(this.b);
                VirtualKeyboard virtualKeyboard = VirtualKeyboard.this;
                virtualKeyboard.setSelection(virtualKeyboard.getText().length());
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ int a;
        final /* synthetic */ VirtualKeyboard b;
        final /* synthetic */ int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f2804d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f2805e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f2806f;

        b(int i, VirtualKeyboard virtualKeyboard, int i2, String str, View view, int i3) {
            this.a = i;
            this.b = virtualKeyboard;
            this.c = i2;
            this.f2804d = str;
            this.f2805e = view;
            this.f2806f = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VirtualKeyboard.isKeyboardVisible()) {
                return;
            }
            if (this.a == 0) {
                this.b.setImeOptions(33554432);
            }
            this.b.setRawInputType(this.c);
            this.b.setText(this.f2804d);
            VirtualKeyboard virtualKeyboard = this.b;
            virtualKeyboard.setSelection(virtualKeyboard.getText().length());
            VirtualKeyboard virtualKeyboard2 = this.b;
            VirtualKeyboard.f2803d = this.f2805e;
            if (this.f2806f > 0) {
                virtualKeyboard2.setFilters(new InputFilter[]{new InputFilter.LengthFilter(this.f2806f)});
            }
            if (this.b.getParent() != null) {
                ((ViewGroup) this.b.getParent()).removeView(this.b);
            }
            VirtualKeyboard.c.addView(this.b, 0);
            this.b.requestFocus();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VirtualKeyboard.isKeyboardVisible()) {
                View view = VirtualKeyboard.f2803d;
                if (view == null) {
                    VirtualKeyboard.c.removeView(VirtualKeyboard.a);
                } else {
                    view.requestFocus();
                    VirtualKeyboard.c.removeView(VirtualKeyboard.a);
                }
            }
        }
    }

    public VirtualKeyboard(Activity activity, ViewGroup viewGroup) {
        super(activity);
        setWidth(0);
        setHeight(0);
        setMaxHeight(0);
        setMaxWidth(0);
        setOnFocusChangeListener(this);
        c = viewGroup;
        a = this;
        b = activity;
        setImeOptions(33554432);
        setSingleLine();
    }

    public static String GetVirtualKeyboardText() {
        return getInstance() != null ? getInstance().getText().toString() : "";
    }

    public static void HideKeyboard() {
        getInstance().a();
    }

    public static void SetKeyboardText(String str) {
        try {
            b.runOnUiThread(getInstance().new a(str));
        } catch (Exception unused) {
        }
    }

    public static void ShowKeyboard(String str, int i, int i2, int i3, int i4) {
        if (i3 == 0) {
            getInstance().setImeOptions(301989888);
        }
        if (i2 == 0) {
            getInstance().setImeOptions(getInstance().getImeOptions() | 6);
        }
        ShowKeyboardInternal(getInstance(), c.findFocus(), str, i, i3, i4);
    }

    private static void ShowKeyboardInternal(VirtualKeyboard virtualKeyboard, View view, String str, int i, int i2, int i3) {
        try {
            b.runOnUiThread(new b(i2, virtualKeyboard, i, str, view, i3));
        } catch (Exception unused) {
        }
    }

    public static VirtualKeyboard getInstance() {
        return a;
    }

    public static boolean isKeyboardVisible() {
        return c.findFocus() == getInstance();
    }

    public void a() {
        try {
            b.runOnUiThread(new c());
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || (4 != keyEvent.getKeyCode() && 66 != keyEvent.getKeyCode())) {
            return super.dispatchKeyEvent(keyEvent);
        }
        HideKeyboard();
        return true;
    }

    @Override // android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || (4 != keyEvent.getKeyCode() && 66 != keyEvent.getKeyCode())) {
            return super.dispatchKeyEventPreIme(keyEvent);
        }
        HideKeyboard();
        return true;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        InputMethodManager inputMethodManager = (InputMethodManager) b.getSystemService("input_method");
        if (z) {
            inputMethodManager.showSoftInput(this, 2);
        } else {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            LowProfileListener.ActivateImmersiveMode(b);
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (getInstance() != null && charSequence.toString() != null) {
            try {
                JNIBridge.NativeSendKeyboardData(charSequence.toString());
            } catch (Exception unused) {
            }
        }
        super.onTextChanged(charSequence, i, i2, i3);
    }
}
