package com.applovin.exoplayer2.g.d;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.common.base.Charsets;
import com.applovin.exoplayer2.g.d;
import com.applovin.exoplayer2.g.g;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class a extends g {
    private static final Pattern Jy = Pattern.compile("(.+?)='(.*?)';", 32);
    private final CharsetDecoder Jz = Charsets.UTF_8.newDecoder();
    private final CharsetDecoder JA = Charsets.ISO_8859_1.newDecoder();

    @Nullable
    private String l(ByteBuffer byteBuffer) {
        try {
            return this.Jz.decode(byteBuffer).toString();
        } catch (CharacterCodingException unused) {
            try {
                return this.JA.decode(byteBuffer).toString();
            } catch (CharacterCodingException unused2) {
                return null;
            } finally {
                this.JA.reset();
                byteBuffer.rewind();
            }
        } finally {
            this.Jz.reset();
            byteBuffer.rewind();
        }
    }

    @Override // com.applovin.exoplayer2.g.g
    protected com.applovin.exoplayer2.g.a a(d dVar, ByteBuffer byteBuffer) {
        String strL = l(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (strL == null) {
            return new com.applovin.exoplayer2.g.a(new c(bArr, null, null));
        }
        Matcher matcher = Jy.matcher(strL);
        String str2 = null;
        for (int iEnd = 0; matcher.find(iEnd); iEnd = matcher.end()) {
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            if (strGroup != null) {
                String lowerCase = Ascii.toLowerCase(strGroup);
                lowerCase.hashCode();
                if (lowerCase.equals("streamurl")) {
                    str2 = strGroup2;
                } else if (lowerCase.equals("streamtitle")) {
                    str = strGroup2;
                }
            }
        }
        return new com.applovin.exoplayer2.g.a(new c(bArr, str, str2));
    }
}
