package com.hyprmx.android.sdk.activity;

import android.app.DatePickerDialog;
import android.content.ActivityNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.method.DigitsKeyListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import com.google.android.gms.drive.DriveFile;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.footer.FooterContract;
import com.hyprmx.android.sdk.footer.FooterFragment;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0003\u0006\u0007\bB\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;", "Lcom/hyprmx/android/sdk/core/v;", "<init>", "()V", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public final class HyprMXRequiredInformationActivity extends AppCompatActivity implements FooterContract.URLPresenter, com.hyprmx.android.sdk.core.v {
    public ViewGroup a;
    public ScrollView b;
    public TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Button f4443d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ProgressBar f4444e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a f4445f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Calendar f4446g;
    public FooterFragment h;
    public com.hyprmx.android.sdk.api.data.r i;
    public k0 j;
    public DatePickerDialog k;
    public float l;
    public boolean m;
    public List<? extends com.hyprmx.android.sdk.api.data.o> n;
    public boolean o;

    public final class a {
        public int a;
        public int b;
        public int c;

        public a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    public static final class b implements DatePickerDialog.OnDateSetListener {
        public DatePickerDialog.OnDateSetListener a;

        public b(DatePickerDialog.OnDateSetListener onDateSetListener) {
            this.a = onDateSetListener;
        }

        public final void a(DatePickerDialog dialog) {
            Intrinsics.checkNotNullParameter(dialog, "dialog");
            Window window = dialog.getWindow();
            Intrinsics.checkNotNull(window);
            window.getDecorView().getViewTreeObserver().addOnWindowAttachListener(new l0(this));
        }

        @Override // android.app.DatePickerDialog.OnDateSetListener
        public final void onDateSet(DatePicker view, int i, int i2, int i3) {
            Intrinsics.checkNotNullParameter(view, "view");
            DatePickerDialog.OnDateSetListener onDateSetListener = this.a;
            if (onDateSetListener != null) {
                onDateSetListener.onDateSet(view, i, i2, i3);
            }
        }
    }

    public static final class c implements InputFilter {
        public final int a;

        public c(int i) {
            this.a = i;
        }

        @Override // android.text.InputFilter
        public final CharSequence filter(CharSequence source, int i, int i2, Spanned dest, int i3, int i4) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(dest, "dest");
            try {
                String string = source.subSequence(i, i2).toString();
                StringBuilder sb = new StringBuilder();
                String strSubstring = dest.toString().substring(0, i3);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                sb.append(strSubstring);
                sb.append(string);
                String strSubstring2 = dest.toString().substring(i4, dest.toString().length());
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                sb.append(strSubstring2);
                if (Integer.parseInt(sb.toString()) <= this.a) {
                    return null;
                }
                return "";
            } catch (NumberFormatException e2) {
                HyprMXLog.d("NumberFormatException for EditText field input: " + e2.getLocalizedMessage());
                return "";
            }
        }
    }

    public static final void a(HyprMXRequiredInformationActivity this$0, EditText editText, DatePicker datePicker, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(editText, "$editText");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        Calendar calendar = this$0.f4446g;
        a aVar = null;
        if (calendar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendar");
            calendar = null;
        }
        calendar.clear();
        Calendar calendar2 = this$0.f4446g;
        if (calendar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendar");
            calendar2 = null;
        }
        calendar2.set(i, i2, i3);
        Calendar calendar3 = this$0.f4446g;
        if (calendar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendar");
            calendar3 = null;
        }
        editText.setText(simpleDateFormat.format(calendar3.getTime()));
        a aVar2 = this$0.f4445f;
        if (aVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datePickerDate");
            aVar2 = null;
        }
        aVar2.a = i;
        a aVar3 = this$0.f4445f;
        if (aVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datePickerDate");
            aVar3 = null;
        }
        aVar3.b = i2;
        a aVar4 = this$0.f4445f;
        if (aVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datePickerDate");
        } else {
            aVar = aVar4;
        }
        aVar.c = i3;
    }

    public static final void a(final HyprMXRequiredInformationActivity this$0, com.hyprmx.android.sdk.api.data.o requirement, final EditText editText, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(requirement, "$requirement");
        Intrinsics.checkNotNullParameter(editText, "$editText");
        DatePickerDialog.OnDateSetListener delegate = new DatePickerDialog.OnDateSetListener() { // from class: com.hyprmx.android.sdk.activity.a1
            @Override // android.app.DatePickerDialog.OnDateSetListener
            public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
                HyprMXRequiredInformationActivity.a(this.a, editText, datePicker, i, i2, i3);
            }
        };
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        b bVar = new b(delegate);
        a aVar = this$0.f4445f;
        a aVar2 = null;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datePickerDate");
            aVar = null;
        }
        int i = aVar.a;
        a aVar3 = this$0.f4445f;
        if (aVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datePickerDate");
            aVar3 = null;
        }
        int i2 = aVar3.b;
        a aVar4 = this$0.f4445f;
        if (aVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datePickerDate");
        } else {
            aVar2 = aVar4;
        }
        DatePickerDialog datePickerDialog = new DatePickerDialog(this$0, bVar, i, i2, aVar2.c);
        this$0.k = datePickerDialog;
        Intrinsics.checkNotNull(datePickerDialog);
        datePickerDialog.setTitle(requirement.getTitle());
        if (!this$0.isFinishing()) {
            DatePickerDialog datePickerDialog2 = this$0.k;
            Intrinsics.checkNotNull(datePickerDialog2);
            datePickerDialog2.show();
        }
        DatePickerDialog datePickerDialog3 = this$0.k;
        Intrinsics.checkNotNull(datePickerDialog3);
        bVar.a(datePickerDialog3);
    }

    public static final void a(HyprMXRequiredInformationActivity this$0, List requiredInformation, View it) {
        boolean z;
        Resources resources;
        int i;
        k0 k0Var;
        String string;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(requiredInformation, "$requiredInformation");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this$0.getClass();
        HashMap requiredInfo = new HashMap();
        Iterator it2 = requiredInformation.iterator();
        while (it2.hasNext()) {
            com.hyprmx.android.sdk.api.data.o oVar = (com.hyprmx.android.sdk.api.data.o) it2.next();
            boolean z2 = oVar instanceof com.hyprmx.android.sdk.api.data.h;
            if (z2) {
                com.hyprmx.android.sdk.api.data.h hVar = (com.hyprmx.android.sdk.api.data.h) oVar;
                ViewGroup viewGroup = this$0.a;
                if (viewGroup == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("formContainer");
                    viewGroup = null;
                }
                string = ((EditText) viewGroup.findViewWithTag(hVar)).getText().toString();
            } else if (oVar instanceof com.hyprmx.android.sdk.api.data.q) {
                com.hyprmx.android.sdk.api.data.q qVar = (com.hyprmx.android.sdk.api.data.q) oVar;
                ViewGroup viewGroup2 = this$0.a;
                if (viewGroup2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("formContainer");
                    viewGroup2 = null;
                }
                RadioGroup radioGroup = (RadioGroup) viewGroup2.findViewWithTag(qVar);
                int childCount = radioGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = radioGroup.getChildAt(i2);
                    Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.widget.RadioButton");
                    RadioButton radioButton = (RadioButton) childAt;
                    if (radioButton.isChecked()) {
                        Object tag = radioButton.getTag();
                        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.String");
                        string = (String) tag;
                        break;
                    }
                }
                string = null;
            } else if (oVar instanceof com.hyprmx.android.sdk.api.data.k) {
                com.hyprmx.android.sdk.api.data.k kVar = (com.hyprmx.android.sdk.api.data.k) oVar;
                ViewGroup viewGroup3 = this$0.a;
                if (viewGroup3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("formContainer");
                    viewGroup3 = null;
                }
                string = ((EditText) ((LinearLayout) viewGroup3.findViewWithTag(kVar)).findViewById(R.id.hyprmx_editText)).getText().toString();
            } else {
                HyprMXLog.e("Requirement type not supported");
                string = null;
            }
            if (string == null || string.length() == 0) {
                HyprMXLog.v("RequiredInformation not entered: " + oVar.getName());
            } else if (z2 || (oVar instanceof com.hyprmx.android.sdk.api.data.q)) {
                requiredInfo.put(oVar.getName(), string);
            } else if (oVar instanceof com.hyprmx.android.sdk.api.data.k) {
                ViewGroup viewGroup4 = this$0.a;
                if (viewGroup4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("formContainer");
                    viewGroup4 = null;
                }
                TextView textView = (TextView) ((LinearLayout) viewGroup4.findViewWithTag(oVar)).findViewById(R.id.hyprmx_errorView);
                try {
                    int i3 = Integer.parseInt(string);
                    if (i3 < ((com.hyprmx.android.sdk.api.data.k) oVar).c || i3 > ((com.hyprmx.android.sdk.api.data.k) oVar).f4487d) {
                        throw new NumberFormatException("RequiredInformation not entered: " + oVar.getName());
                    }
                    requiredInfo.put(oVar.getName(), string);
                } catch (NumberFormatException e2) {
                    HyprMXLog.v(e2.getLocalizedMessage());
                    textView.setText(((com.hyprmx.android.sdk.api.data.k) oVar).f4488e);
                    textView.setVisibility(0);
                }
            } else {
                continue;
            }
            z = false;
        }
        z = true;
        if (z && !this$0.m) {
            this$0.m = true;
            k0 k0Var2 = this$0.j;
            if (k0Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("requiredInfoController");
                k0Var = null;
            } else {
                k0Var = k0Var2;
            }
            k0Var.getClass();
            Intrinsics.checkNotNullParameter(requiredInfo, "requiredInfo");
            BuildersKt__Builders_commonKt.launch$default(k0Var, null, null, new j0(k0Var, requiredInfo, null), 3, null);
            this$0.finish();
            return;
        }
        int height = it.getHeight() + it.getTop();
        if (this$0.m) {
            resources = this$0.getResources();
            i = R.string.hyprmx_MSG_PLEASE_WAIT;
        } else {
            resources = this$0.getResources();
            i = R.string.hyprmx_MSG_PLEASE_FILL_IN_ALL_FIELDS;
        }
        String string2 = resources.getString(i);
        Intrinsics.checkNotNullExpressionValue(string2, "if (requestSent) {\n     …_IN_ALL_FIELDS)\n        }");
        Toast toastMakeText = Toast.makeText(this$0.getApplicationContext(), string2, 1);
        toastMakeText.setGravity(49, 0, height);
        toastMakeText.show();
    }

    @Override // com.hyprmx.android.sdk.core.v
    public final void G() {
        finish();
    }

    public final void a(final List<? extends com.hyprmx.android.sdk.api.data.o> list) {
        Button button;
        ViewGroup viewGroup;
        Iterator<? extends com.hyprmx.android.sdk.api.data.o> it = list.iterator();
        while (true) {
            ViewGroup viewGroup2 = null;
            if (!it.hasNext()) {
                break;
            }
            final com.hyprmx.android.sdk.api.data.o next = it.next();
            TextView textView = new TextView(this);
            textView.setText(next.getTitle());
            textView.setTextSize(18.0f);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            float f2 = 10;
            float f3 = this.l;
            int i = (int) (f2 * f3);
            float f4 = 5;
            int i2 = (int) (f3 * f4);
            layoutParams.setMargins(i, i2, 0, i2);
            View viewFindViewById = findViewById(R.id.hyprmx_submit_button);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(R.id.hyprmx_submit_button)");
            this.f4443d = (Button) viewFindViewById;
            if (next instanceof com.hyprmx.android.sdk.api.data.h) {
                final EditText editText = new EditText(this);
                editText.setContentDescription(next.getName());
                editText.setTag(next);
                editText.setFocusable(false);
                editText.setFocusableInTouchMode(false);
                editText.setClickable(true);
                editText.setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.activity.b1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        HyprMXRequiredInformationActivity.a(this.a, next, editText, view);
                    }
                });
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                float f5 = this.l;
                int i3 = (int) (f2 * f5);
                int i4 = (int) (f4 * f5);
                layoutParams2.setMargins(i3, i4, i3, i4);
                ViewGroup viewGroup3 = this.a;
                if (viewGroup3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("formContainer");
                    viewGroup3 = null;
                }
                viewGroup3.addView(textView, layoutParams);
                ViewGroup viewGroup4 = this.a;
                if (viewGroup4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("formContainer");
                } else {
                    viewGroup2 = viewGroup4;
                }
                viewGroup2.addView(editText, layoutParams2);
            } else if (next instanceof com.hyprmx.android.sdk.api.data.q) {
                RadioGroup radioGroup = new RadioGroup(this);
                radioGroup.setTag(next);
                for (com.hyprmx.android.sdk.api.data.t tVar : ((com.hyprmx.android.sdk.api.data.q) next).b) {
                    RadioButton radioButton = new RadioButton(this);
                    radioButton.setTag(tVar.b);
                    radioButton.setText(tVar.a);
                    radioButton.setTextColor(ViewCompat.MEASURED_STATE_MASK);
                    radioButton.setButtonTintList(getResources().getColorStateList(R.color.hyprmx_prequal_radio_button));
                    radioGroup.addView(radioButton);
                }
                ViewGroup viewGroup5 = this.a;
                if (viewGroup5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("formContainer");
                    viewGroup5 = null;
                }
                viewGroup5.addView(textView, layoutParams);
                ViewGroup viewGroup6 = this.a;
                if (viewGroup6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("formContainer");
                } else {
                    viewGroup2 = viewGroup6;
                }
                viewGroup2.addView(radioGroup, layoutParams);
            } else if (next instanceof com.hyprmx.android.sdk.api.data.k) {
                View viewInflate = getLayoutInflater().inflate(R.layout.hyprmx_edit_text_with_error, (ViewGroup) null);
                Intrinsics.checkNotNull(viewInflate, "null cannot be cast to non-null type android.widget.LinearLayout");
                LinearLayout linearLayout = (LinearLayout) viewInflate;
                linearLayout.setTag(next);
                EditText editText2 = (EditText) linearLayout.findViewById(R.id.hyprmx_editText);
                TextView textView2 = (TextView) linearLayout.findViewById(R.id.hyprmx_titleView);
                TextView textView3 = (TextView) linearLayout.findViewById(R.id.hyprmx_errorView);
                textView2.setText(next.getTitle());
                editText2.setContentDescription(next.getName());
                editText2.setImeOptions(DriveFile.MODE_READ_ONLY);
                com.hyprmx.android.sdk.api.data.k kVar = (com.hyprmx.android.sdk.api.data.k) next;
                editText2.setHint(kVar.b);
                editText2.setKeyListener(DigitsKeyListener.getInstance("0123456789"));
                editText2.setFilters(new InputFilter[]{new c(kVar.f4487d), new InputFilter.LengthFilter(String.valueOf(kVar.f4487d).length())});
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
                float f6 = this.l;
                int i5 = (int) (f2 * f6);
                layoutParams3.setMargins(i5, (int) (f6 * f4), i5, 0);
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
                float f7 = this.l;
                layoutParams4.setMargins((int) (14 * f7), 0, (int) (f2 * f7), (int) (f4 * f7));
                textView2.setLayoutParams(layoutParams);
                editText2.setLayoutParams(layoutParams3);
                textView3.setLayoutParams(layoutParams4);
                ViewGroup viewGroup7 = this.a;
                if (viewGroup7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("formContainer");
                    viewGroup = null;
                } else {
                    viewGroup = viewGroup7;
                }
                viewGroup.addView(linearLayout);
            }
        }
        if (Build.VERSION.SDK_INT == 21) {
            Button button2 = this.f4443d;
            if (button2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("submitButton");
                button2 = null;
            }
            button2.getBackground().setColorFilter(getResources().getColor(R.color.hyprmx_submit_red), PorterDuff.Mode.SRC);
        } else {
            Button button3 = this.f4443d;
            if (button3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("submitButton");
                button3 = null;
            }
            button3.setBackgroundTintList(ColorStateList.valueOf(getResources().getColor(R.color.hyprmx_submit_red)));
        }
        Button button4 = this.f4443d;
        if (button4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            button4 = null;
        }
        button4.setTextColor(-1);
        Button button5 = this.f4443d;
        if (button5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            button = null;
        } else {
            button = button5;
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.activity.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HyprMXRequiredInformationActivity.a(this.a, list, view);
            }
        });
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.URLPresenter
    public final void didTapURL(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        CustomTabsIntent customTabsIntentBuild = new CustomTabsIntent.Builder().build();
        Intrinsics.checkNotNullExpressionValue(customTabsIntentBuild, "builder.build()");
        try {
            customTabsIntentBuild.launchUrl(this, Uri.parse(url));
        } catch (ActivityNotFoundException unused) {
            HyprMXLog.d("Could not launch activity");
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getAction() == 0) {
            View currentFocus = getCurrentFocus();
            if (currentFocus instanceof EditText) {
                Rect rect = new Rect();
                EditText editText = (EditText) currentFocus;
                editText.getGlobalVisibleRect(rect);
                if (!rect.contains((int) event.getRawX(), (int) event.getRawY())) {
                    editText.clearFocus();
                    InputMethodManager inputMethodManager = (InputMethodManager) ContextCompat.getSystemService(this, InputMethodManager.class);
                    if (inputMethodManager != null) {
                        inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
                    }
                }
            }
        }
        return super.dispatchTouchEvent(event);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        k0 k0Var;
        this.o = true;
        k0 k0Var2 = this.j;
        if (k0Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requiredInfoController");
            k0Var = null;
        } else {
            k0Var = k0Var2;
        }
        k0Var.getClass();
        BuildersKt__Builders_commonKt.launch$default(k0Var, null, null, new i0(k0Var, null), 3, null);
        super.onBackPressed();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        FooterFragment footerFragment;
        k0 k0Var;
        super.onCreate(bundle);
        if (com.hyprmx.android.sdk.activity.a.b == null) {
            HyprMXLog.w("Cancelling ad. Cannot recreate HyprMXRequiredInformationActivity.");
            finish();
            return;
        }
        com.hyprmx.android.sdk.core.j jVar = com.hyprmx.android.sdk.core.t.a.f4521g;
        if (jVar != null) {
            Intrinsics.checkNotNullParameter(this, "listener");
            jVar.h.add(new WeakReference(this));
        }
        g0 g0Var = com.hyprmx.android.sdk.activity.a.b;
        Intrinsics.checkNotNull(g0Var);
        this.j = g0Var.a(this);
        this.l = getResources().getDisplayMetrics().density;
        ProgressBar progressBar = null;
        if (bundle != null) {
            HyprMXLog.d("Cancelling ad because activity was destroyed.");
            k0 k0Var2 = this.j;
            if (k0Var2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("requiredInfoController");
                k0Var = null;
            } else {
                k0Var = k0Var2;
            }
            k0Var.getClass();
            BuildersKt__Builders_commonKt.launch$default(k0Var, null, null, new i0(k0Var, null), 3, null);
            finish();
            return;
        }
        k0 k0Var3 = this.j;
        if (k0Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requiredInfoController");
            k0Var3 = null;
        }
        this.i = k0Var3.c;
        k0 k0Var4 = this.j;
        if (k0Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requiredInfoController");
            k0Var4 = null;
        }
        this.n = k0Var4.f4455d;
        setContentView(R.layout.hyprmx_prequal_layout);
        Calendar calendar = Calendar.getInstance();
        Intrinsics.checkNotNullExpressionValue(calendar, "getInstance()");
        this.f4446g = calendar;
        if (calendar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendar");
            calendar = null;
        }
        int i = calendar.get(1);
        Calendar calendar2 = this.f4446g;
        if (calendar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendar");
            calendar2 = null;
        }
        int i2 = calendar2.get(2);
        Calendar calendar3 = this.f4446g;
        if (calendar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendar");
            calendar3 = null;
        }
        this.f4445f = new a(i, i2, calendar3.get(5));
        View viewFindViewById = findViewById(R.id.hyprmx_scroller);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(R.id.hyprmx_scroller)");
        this.b = (ScrollView) viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.hyprmx_form_container);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(R.id.hyprmx_form_container)");
        this.a = (ViewGroup) viewFindViewById2;
        View viewFindViewById3 = findViewById(R.id.hyprmx_title_textview);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(R.id.hyprmx_title_textview)");
        this.c = (TextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R.id.hyprmx_progress);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(R.id.hyprmx_progress)");
        this.f4444e = (ProgressBar) viewFindViewById4;
        List<? extends com.hyprmx.android.sdk.api.data.o> list = this.n;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requiredInformations");
            list = null;
        }
        a(list);
        Fragment fragmentFindFragmentById = getSupportFragmentManager().findFragmentById(R.id.hyprmx_footer_fragment);
        Intrinsics.checkNotNull(fragmentFindFragmentById, "null cannot be cast to non-null type com.hyprmx.android.sdk.footer.FooterFragment");
        this.h = (FooterFragment) fragmentFindFragmentById;
        com.hyprmx.android.sdk.api.data.r rVar = this.i;
        if (rVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("uiComponents");
            rVar = null;
        }
        com.hyprmx.android.sdk.footer.a aVar = rVar.b.c;
        FooterFragment footerFragment2 = this.h;
        if (footerFragment2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("footerFragment");
            footerFragment = null;
        } else {
            footerFragment = footerFragment2;
        }
        k0 k0Var5 = this.j;
        if (k0Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requiredInfoController");
            k0Var5 = null;
        }
        new com.hyprmx.android.sdk.footer.d(this, null, aVar, footerFragment, false, k0Var5.b);
        com.hyprmx.android.sdk.api.data.r rVar2 = this.i;
        if (rVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("uiComponents");
            rVar2 = null;
        }
        com.hyprmx.android.sdk.api.data.s sVar = rVar2.b;
        TextView textView = this.c;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleView");
            textView = null;
        }
        textView.setText(sVar.a);
        TextView textView2 = this.c;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("titleView");
            textView2 = null;
        }
        textView2.setTextSize(sVar.b);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        Button button = this.f4443d;
        if (button == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            button = null;
        }
        button.setLayoutParams(layoutParams);
        Button button2 = this.f4443d;
        if (button2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            button2 = null;
        }
        int i3 = (int) ((10 * this.l) + 0.5f);
        button2.setPadding(i3, i3, i3, i3);
        ScrollView scrollView = this.b;
        if (scrollView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scrollView");
            scrollView = null;
        }
        scrollView.setVisibility(0);
        ProgressBar progressBar2 = this.f4444e;
        if (progressBar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressView");
        } else {
            progressBar = progressBar2;
        }
        progressBar.setVisibility(8);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        k0 k0Var;
        try {
            if (!this.o && !this.m) {
                k0 k0Var2 = this.j;
                if (k0Var2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("requiredInfoController");
                    k0Var = null;
                } else {
                    k0Var = k0Var2;
                }
                k0Var.getClass();
                BuildersKt__Builders_commonKt.launch$default(k0Var, null, null, new h0(k0Var, false, null), 3, null);
            }
        } catch (Exception unused) {
            HyprMXLog.e("Error cleaning up required info activity.");
        }
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        DatePickerDialog datePickerDialog = this.k;
        if (datePickerDialog != null) {
            datePickerDialog.dismiss();
        }
        super.onStop();
    }
}
