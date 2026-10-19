package com.google.thirdparty.publicsuffix;

import com.google.common.base.Joiner;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Queues;
import java.util.Deque;

/* JADX INFO: compiled from: TrieParser.java */
/* JADX INFO: loaded from: classes3.dex */
final class b {
    private static final Joiner a = Joiner.on("");

    private static int a(Deque<CharSequence> deque, CharSequence charSequence, int i, ImmutableMap.b<String, PublicSuffixType> bVar) {
        int length = charSequence.length();
        char cCharAt = 0;
        int i2 = i;
        while (i2 < length && (cCharAt = charSequence.charAt(i2)) != '&' && cCharAt != '?' && cCharAt != '!' && cCharAt != ':' && cCharAt != ',') {
            i2++;
        }
        deque.push(c(charSequence.subSequence(i, i2)));
        if (cCharAt == '!' || cCharAt == '?' || cCharAt == ':' || cCharAt == ',') {
            String strE = a.e(deque);
            if (strE.length() > 0) {
                bVar.g(strE, PublicSuffixType.f(cCharAt));
            }
        }
        int iA = i2 + 1;
        if (cCharAt != '?' && cCharAt != ',') {
            while (iA < length) {
                iA += a(deque, charSequence, iA, bVar);
                if (charSequence.charAt(iA) == '?' || charSequence.charAt(iA) == ',') {
                    iA++;
                    break;
                }
            }
        }
        deque.pop();
        return iA - i;
    }

    static ImmutableMap<String, PublicSuffixType> b(CharSequence charSequence) {
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        int length = charSequence.length();
        int iA = 0;
        while (iA < length) {
            iA += a(Queues.newArrayDeque(), charSequence, iA, bVarBuilder);
        }
        return bVarBuilder.d();
    }

    private static CharSequence c(CharSequence charSequence) {
        return new StringBuilder(charSequence).reverse();
    }
}
