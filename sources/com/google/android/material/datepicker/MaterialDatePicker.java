package com.google.android.material.datepicker;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.util.Pair;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$drawable;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.EdgeToEdgeUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes3.dex */
public final class MaterialDatePicker<S> extends DialogFragment {
    static final Object a = "CONFIRM_BUTTON_TAG";
    static final Object b = "CANCEL_BUTTON_TAG";
    static final Object c = "TOGGLE_BUTTON_TAG";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinkedHashSet<f<? super S>> f3250d = new LinkedHashSet<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LinkedHashSet<View.OnClickListener> f3251e = new LinkedHashSet<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final LinkedHashSet<DialogInterface.OnCancelListener> f3252f = new LinkedHashSet<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final LinkedHashSet<DialogInterface.OnDismissListener> f3253g = new LinkedHashSet<>();

    @StyleRes
    private int h;

    @Nullable
    private DateSelector<S> i;
    private k<S> j;

    @Nullable
    private CalendarConstraints k;
    private MaterialCalendar<S> l;

    @StringRes
    private int m;
    private CharSequence n;
    private boolean o;
    private int p;

    @StringRes
    private int q;
    private CharSequence r;

    @StringRes
    private int s;
    private CharSequence t;
    private TextView u;
    private CheckableImageButton v;

    @Nullable
    private MaterialShapeDrawable w;
    private Button x;
    private boolean y;

    public static final class Builder<S> {
        final DateSelector<S> a;
        int b = 0;
        int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        CharSequence f3254d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f3255e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        CharSequence f3256f = null;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f3257g = 0;
        CharSequence h = null;

        @Nullable
        S i = null;
        int j = 0;

        private Builder(DateSelector<S> dateSelector) {
            this.a = dateSelector;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static <S> Builder<S> customDatePicker(@NonNull DateSelector<S> dateSelector) {
            return new Builder<>(dateSelector);
        }

        @NonNull
        public static Builder<Long> datePicker() {
            return new Builder<>(new SingleDateSelector());
        }

        @NonNull
        public static Builder<Pair<Long, Long>> dateRangePicker() {
            return new Builder<>(new RangeDateSelector());
        }
    }

    class a implements View.OnClickListener {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialDatePicker.this.f3250d.iterator();
            while (it.hasNext()) {
                ((f) it.next()).a(MaterialDatePicker.this.p());
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialDatePicker.this.f3251e.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    class c implements OnApplyWindowInsetsListener {
        final /* synthetic */ int a;
        final /* synthetic */ View b;
        final /* synthetic */ int c;

        c(int i, View view, int i2) {
            this.a = i;
            this.b = view;
            this.c = i2;
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int i = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).top;
            if (this.a >= 0) {
                this.b.getLayoutParams().height = this.a + i;
                View view2 = this.b;
                view2.setLayoutParams(view2.getLayoutParams());
            }
            View view3 = this.b;
            view3.setPadding(view3.getPaddingLeft(), this.c + i, this.b.getPaddingRight(), this.b.getPaddingBottom());
            return windowInsetsCompat;
        }
    }

    class d extends j<S> {
        d() {
        }

        @Override // com.google.android.material.datepicker.j
        public void a() {
            MaterialDatePicker.this.x.setEnabled(false);
        }

        @Override // com.google.android.material.datepicker.j
        public void b(S s) {
            MaterialDatePicker.this.w();
            MaterialDatePicker.this.x.setEnabled(MaterialDatePicker.this.m().x());
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialDatePicker.this.x.setEnabled(MaterialDatePicker.this.m().x());
            MaterialDatePicker.this.v.toggle();
            MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
            materialDatePicker.x(materialDatePicker.v);
            MaterialDatePicker.this.v();
        }
    }

    @NonNull
    private static Drawable i(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, AppCompatResources.getDrawable(context, R$drawable.b));
        stateListDrawable.addState(new int[0], AppCompatResources.getDrawable(context, R$drawable.c));
        return stateListDrawable;
    }

    private void j(Window window) {
        if (this.y) {
            return;
        }
        View viewFindViewById = requireView().findViewById(R$id.h);
        EdgeToEdgeUtils.applyEdgeToEdge(window, true, ViewUtils.getBackgroundColor(viewFindViewById), null);
        ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new c(viewFindViewById.getLayoutParams().height, viewFindViewById, viewFindViewById.getPaddingTop()));
        this.y = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DateSelector<S> m() {
        if (this.i == null) {
            this.i = (DateSelector) getArguments().getParcelable("DATE_SELECTOR_KEY");
        }
        return this.i;
    }

    private static int o(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R$dimen.R);
        int i = Month.i().f3259d;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(R$dimen.T) * i) + ((i - 1) * resources.getDimensionPixelOffset(R$dimen.X));
    }

    private int q(Context context) {
        int i = this.h;
        return i != 0 ? i : m().e(context);
    }

    private void r(Context context) {
        this.v.setTag(c);
        this.v.setImageDrawable(i(context));
        this.v.setChecked(this.p != 0);
        ViewCompat.setAccessibilityDelegate(this.v, null);
        x(this.v);
        this.v.setOnClickListener(new e());
    }

    static boolean s(@NonNull Context context) {
        return u(context, R.attr.windowFullscreen);
    }

    static boolean t(@NonNull Context context) {
        return u(context, R$attr.L);
    }

    public static long thisMonthInUtcMilliseconds() {
        return Month.i().f3261f;
    }

    public static long todayInUtcMilliseconds() {
        return n.o().getTimeInMillis();
    }

    static boolean u(@NonNull Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.resolveOrThrow(context, R$attr.E, MaterialCalendar.class.getCanonicalName()), new int[]{i});
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        int iQ = q(requireContext());
        this.l = MaterialCalendar.newInstance(m(), iQ, this.k);
        this.j = this.v.isChecked() ? g.n(m(), iQ, this.k) : this.l;
        w();
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.replace(R$id.z, this.j);
        fragmentTransactionBeginTransaction.commitNow();
        this.j.a(new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        String strN = n();
        this.u.setContentDescription(String.format(getString(R$string.l), strN));
        this.u.setText(strN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(@NonNull CheckableImageButton checkableImageButton) {
        this.v.setContentDescription(this.v.isChecked() ? checkableImageButton.getContext().getString(R$string.C) : checkableImageButton.getContext().getString(R$string.E));
    }

    public String n() {
        return m().g(getContext());
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.f3252f.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.h = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.i = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.k = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.m = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.n = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.p = bundle.getInt("INPUT_MODE_KEY");
        this.q = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.r = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.s = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.t = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), q(requireContext()));
        Context context = dialog.getContext();
        this.o = s(context);
        int iResolveOrThrow = MaterialAttributes.resolveOrThrow(context, R$attr.s, MaterialDatePicker.class.getCanonicalName());
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, R$attr.E, R$style.w);
        this.w = materialShapeDrawable;
        materialShapeDrawable.M(context);
        this.w.X(ColorStateList.valueOf(iResolveOrThrow));
        this.w.W(ViewCompat.getElevation(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.o ? R$layout.w : R$layout.v, viewGroup);
        Context context = viewInflate.getContext();
        if (this.o) {
            viewInflate.findViewById(R$id.z).setLayoutParams(new LinearLayout.LayoutParams(o(context), -2));
        } else {
            viewInflate.findViewById(R$id.A).setLayoutParams(new LinearLayout.LayoutParams(o(context), -1));
        }
        TextView textView = (TextView) viewInflate.findViewById(R$id.F);
        this.u = textView;
        ViewCompat.setAccessibilityLiveRegion(textView, 1);
        this.v = (CheckableImageButton) viewInflate.findViewById(R$id.G);
        TextView textView2 = (TextView) viewInflate.findViewById(R$id.K);
        CharSequence charSequence = this.n;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.m);
        }
        r(context);
        this.x = (Button) viewInflate.findViewById(R$id.c);
        if (m().x()) {
            this.x.setEnabled(true);
        } else {
            this.x.setEnabled(false);
        }
        this.x.setTag(a);
        CharSequence charSequence2 = this.r;
        if (charSequence2 != null) {
            this.x.setText(charSequence2);
        } else {
            int i = this.q;
            if (i != 0) {
                this.x.setText(i);
            }
        }
        this.x.setOnClickListener(new a());
        Button button = (Button) viewInflate.findViewById(R$id.a);
        button.setTag(b);
        CharSequence charSequence3 = this.t;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i2 = this.s;
            if (i2 != 0) {
                button.setText(i2);
            }
        }
        button.setOnClickListener(new b());
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.f3253g.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.h);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.i);
        CalendarConstraints.b bVar = new CalendarConstraints.b(this.k);
        if (this.l.y() != null) {
            bVar.b(this.l.y().f3261f);
        }
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar.a());
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.m);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.n);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.q);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.r);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.s);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.t);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.o) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.w);
            j(window);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R$dimen.V);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.w, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new com.google.android.material.dialog.a(requireDialog(), rect));
        }
        v();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        this.j.m();
        super.onStop();
    }

    @Nullable
    public final S p() {
        return m().Q();
    }
}
