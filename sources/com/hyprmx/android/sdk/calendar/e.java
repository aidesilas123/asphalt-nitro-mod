package com.hyprmx.android.sdk.calendar;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends Lambda implements Function1<Short, CharSequence> {
    public final /* synthetic */ a a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(a aVar) {
        super(1);
        this.a = aVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final CharSequence invoke(Short sh) {
        short sShortValue = sh.shortValue();
        this.a.getClass();
        if (sShortValue != 0 && sShortValue <= 12) {
            return String.valueOf((int) sShortValue);
        }
        throw new IllegalArgumentException("invalid month of the year: " + ((int) sShortValue));
    }
}
