package com.google.android.datatransport.runtime.retries;

/* JADX INFO: loaded from: classes2.dex */
public final class Retries {
    private Retries() {
    }

    public static <TInput, TResult, TException extends Throwable> TResult retry(int i, TInput tinput, a<TInput, TResult, TException> aVar, b<TInput, TResult> bVar) throws Throwable {
        TResult tresultApply;
        if (i < 1) {
            return aVar.apply(tinput);
        }
        do {
            tresultApply = aVar.apply(tinput);
            tinput = bVar.a(tinput, tresultApply);
            if (tinput == null) {
                break;
            }
            i--;
        } while (i >= 1);
        return tresultApply;
    }
}
