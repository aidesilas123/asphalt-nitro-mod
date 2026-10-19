package com.hyprmx.android.sdk.calendar;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends Lambda implements Function1<Short, CharSequence> {
    public final /* synthetic */ a a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(a aVar) {
        super(1);
        this.a = aVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final CharSequence invoke(Short sh) {
        short sShortValue = sh.shortValue();
        this.a.getClass();
        switch (sShortValue) {
            case 0:
                return "SU";
            case 1:
                return "MO";
            case 2:
                return "TU";
            case 3:
                return "WE";
            case 4:
                return "TH";
            case 5:
                return "FR";
            case 6:
                return "SA";
            default:
                throw new IllegalArgumentException("invalid day of the week: " + ((int) sShortValue));
        }
    }
}
