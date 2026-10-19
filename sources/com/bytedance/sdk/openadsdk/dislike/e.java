package com.bytedance.sdk.openadsdk.dislike;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.customview.PAGEditText;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.google.android.gms.drive.DriveFile;
import java.util.ArrayList;

/* JADX INFO: compiled from: TTDislikeSuggestionDialog.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends Dialog {
    private PAGLinearLayout a;
    private a b;
    private PAGEditText c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PAGTextView f1783d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PAGTextView f1784e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PAGImageView f1785f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f1786g;
    private String h;

    /* JADX INFO: compiled from: TTDislikeSuggestionDialog.java */
    public interface a {
        void a();

        void a(int i, FilterWord filterWord);

        void b();

        void c();

        void d();
    }

    public e(@NonNull Context context) {
        super(context, s.f(context, "tt_quick_option_dialog"));
        setCanceledOnTouchOutside(false);
    }

    private PAGLinearLayout a(Context context) {
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        pAGLinearLayout.setOrientation(1);
        pAGLinearLayout.setBackground(s.c(context, "tt_dislike_dialog_bg"));
        PAGRelativeLayout pAGRelativeLayout = new PAGRelativeLayout(context);
        pAGRelativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, ad.b(context, 48.0f)));
        pAGRelativeLayout.setBackground(s.c(context, "tt_dislike_dialog_bg"));
        this.f1785f = new PAGImageView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(16);
        layoutParams.topMargin = ad.b(context, 12.0f);
        layoutParams.leftMargin = ad.b(context, 12.0f);
        this.f1785f.setLayoutParams(layoutParams);
        this.f1785f.setClickable(true);
        this.f1785f.setFocusable(true);
        this.f1785f.setImageResource(s.d(context, "tt_titlebar_close_seletor"));
        PAGTextView pAGTextView = new PAGTextView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(16);
        layoutParams2.topMargin = ad.b(context, 12.0f);
        pAGTextView.setLayoutParams(layoutParams2);
        pAGTextView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
        pAGTextView.setGravity(17);
        pAGTextView.setSingleLine(true);
        pAGTextView.setText(s.a(context, "tt_display_error"));
        pAGTextView.setTextColor(Color.parseColor("#161823"));
        pAGTextView.setTextSize(15.0f);
        pAGTextView.setTypeface(Typeface.defaultFromStyle(0));
        this.f1784e = new PAGTextView(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(11);
        layoutParams3.addRule(16);
        layoutParams3.topMargin = ad.b(context, 12.0f);
        layoutParams3.leftMargin = ad.b(context, 5.0f);
        layoutParams3.rightMargin = ad.b(context, 12.0f);
        this.f1784e.setLayoutParams(layoutParams3);
        this.f1784e.setPadding(0, 0, ad.b(context, 12.0f), 0);
        this.f1784e.setTextSize(14.0f);
        this.f1784e.setTextColor(-7829368);
        this.f1784e.setClickable(false);
        this.f1784e.setVisibility(0);
        this.f1784e.setGravity(5);
        this.f1784e.setSingleLine(true);
        this.f1784e.setText(s.a(context, "tt_suggestion_commit"));
        View view = new View(context);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, ad.b(context, 0.5f)));
        view.setBackgroundColor(Color.parseColor("#0F161823"));
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(context);
        pAGLinearLayout2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        pAGLinearLayout2.setOrientation(0);
        this.c = new PAGEditText(context);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(0, -2);
        layoutParams4.weight = 15.0f;
        layoutParams4.leftMargin = ad.b(context, 12.0f);
        layoutParams4.topMargin = ad.b(context, 11.5f);
        this.c.setLayoutParams(layoutParams4);
        this.c.setLines(7);
        this.c.setHint(s.a(context, "tt_suggestion_description"));
        this.c.setGravity(3);
        this.c.setTextSize(15.0f);
        this.c.setTextColor(Color.parseColor("#161823"));
        this.c.setHintTextColor(Color.parseColor("#57161823"));
        this.c.setBackground(null);
        this.c.setImeOptions(DriveFile.MODE_READ_ONLY);
        this.f1783d = new PAGTextView(context);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, -2);
        layoutParams5.weight = 1.0f;
        layoutParams5.rightMargin = ad.b(context, 12.0f);
        layoutParams5.bottomMargin = ad.b(context, 6.0f);
        layoutParams5.gravity = 80;
        this.f1783d.setLayoutParams(layoutParams5);
        this.f1783d.setText("0");
        this.f1783d.setGravity(5);
        this.f1783d.setTextColor(Color.parseColor("#BF161823"));
        this.f1783d.setHintTextColor(Color.parseColor("#57161823"));
        this.f1783d.setTextSize(12.0f);
        pAGLinearLayout.addView(pAGRelativeLayout);
        pAGLinearLayout.addView(view);
        pAGLinearLayout.addView(pAGLinearLayout2);
        pAGRelativeLayout.addView(this.f1785f);
        pAGRelativeLayout.addView(pAGTextView);
        pAGRelativeLayout.addView(this.f1784e);
        pAGLinearLayout2.addView(this.c);
        pAGLinearLayout2.addView(this.f1783d);
        return pAGLinearLayout;
    }

    private void a(View view) {
        a((EditText) this.c);
        this.f1784e.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.e.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                String string = e.this.c.getText().toString();
                if (string.length() <= 0 || string.isEmpty()) {
                    return;
                }
                FilterWord filterWord = new FilterWord("0:00", string);
                ArrayList arrayList = new ArrayList();
                arrayList.add(filterWord);
                com.bytedance.sdk.openadsdk.dislike.a.a().a(e.this.f1786g, arrayList, e.this.h, string);
                if (e.this.b != null) {
                    e.this.b.a(4, filterWord);
                }
                e.this.dismiss();
            }
        });
        this.f1785f.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.e.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (e.this.b != null) {
                    e.this.b.c();
                }
                e.this.dismiss();
            }
        });
        this.c.addTextChangedListener(new TextWatcher() { // from class: com.bytedance.sdk.openadsdk.dislike.e.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                int iRound = Math.round(charSequence.length());
                e.this.f1783d.setText(iRound + "");
                if (iRound > 0) {
                    e.this.f1784e.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    e.this.f1784e.setClickable(true);
                } else {
                    e.this.f1784e.setTextColor(-7829368);
                    e.this.f1784e.setClickable(false);
                }
            }
        });
    }

    public static void a(EditText editText) {
        editText.setFilters(new InputFilter[]{new InputFilter() { // from class: com.bytedance.sdk.openadsdk.dislike.e.4
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
                while (i < i2) {
                    int type = Character.getType(charSequence.charAt(i));
                    if (type == 19 || type == 28) {
                        return "";
                    }
                    i++;
                }
                return null;
            }
        }, new InputFilter.LengthFilter(500)});
    }

    private void c() {
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        Window window = getWindow();
        if (window != null) {
            if (window.getDecorView() != null) {
                window.getDecorView().setPadding(0, 0, 0, 0);
            }
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.height = -2;
            window.setAttributes(attributes);
            window.setGravity(80);
        }
    }

    private void d() {
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.bytedance.sdk.openadsdk.dislike.e.5
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                if (e.this.b != null) {
                    e.this.b.d();
                }
            }
        });
    }

    public void a() {
        PAGEditText pAGEditText = this.c;
        if (pAGEditText == null) {
            return;
        }
        pAGEditText.requestFocus();
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(5);
        }
    }

    public void a(a aVar) {
        this.b = aVar;
    }

    public void a(String str, String str2) {
        this.f1786g = str;
        this.h = str2;
    }

    public void b() {
        InputMethodManager inputMethodManager;
        PAGEditText pAGEditText = this.c;
        if (pAGEditText == null || (inputMethodManager = (InputMethodManager) pAGEditText.getContext().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(this.a.getWindowToken(), 0);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        b();
        super.dismiss();
        a aVar = this.b;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        PAGLinearLayout pAGLinearLayoutA = a(o.a());
        this.a = pAGLinearLayoutA;
        setContentView(pAGLinearLayoutA);
        a(this.a);
        c();
        a();
        d();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        a aVar = this.b;
        if (aVar != null) {
            aVar.a();
        }
    }
}
