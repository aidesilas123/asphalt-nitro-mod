package com.gameloft.glads;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class MRAIDHtmlProcessor {
    public static String ProcessRawHtml(byte[] bArr, String str) {
        try {
            String str2 = new String(bArr, C.UTF8_NAME);
            StringBuffer stringBuffer = new StringBuffer(str2);
            Matcher matcher = Pattern.compile("<script\\s+[^>]*\\bsrc\\s*=\\s*([\\\"\\'])mraid\\.js\\1[^>]*>\\s*</script>\\n*", 2).matcher(stringBuffer);
            if (matcher.find()) {
                stringBuffer.replace(matcher.start(), matcher.end(), str);
            } else {
                stringBuffer.insert(0, str);
            }
            boolean z = true;
            boolean z2 = str2.indexOf("<html") != -1;
            boolean z3 = str2.indexOf("<head") != -1;
            if (str2.indexOf("<body") == -1) {
                z = false;
            }
            if (!z2 && (z3 || z)) {
                return null;
            }
            if (z2 && !z) {
                return null;
            }
            String property = System.getProperty("line.separator");
            if (!z2) {
                stringBuffer.insert(0, "<html>" + property + "<head>" + property + "</head>" + property + "<body>" + property);
                StringBuilder sb = new StringBuilder();
                sb.append("</body>");
                sb.append(property);
                sb.append("</html>");
                stringBuffer.append(sb.toString());
            } else if (!z3) {
                Matcher matcher2 = Pattern.compile("<html[^>]*>", 2).matcher(stringBuffer);
                for (int iEnd = 0; matcher2.find(iEnd); iEnd = matcher2.end()) {
                    stringBuffer.insert(matcher2.end(), property + "<head>" + property + "</head>");
                }
            }
            String str3 = "<style>" + property + "body { margin:0; padding:0; }" + property + "*:not(input) { -webkit-touch-callout:none; -webkit-user-select:none; -webkit-text-size-adjust:none; }" + property + "</style>";
            Matcher matcher3 = Pattern.compile("<head[^>]*>", 2).matcher(stringBuffer);
            for (int iEnd2 = 0; matcher3.find(iEnd2); iEnd2 = matcher3.end()) {
                stringBuffer.insert(matcher3.end(), property + "<meta name='viewport' content='width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no' />" + property + str3);
            }
            return stringBuffer.toString();
        } catch (Exception unused) {
            return "";
        }
    }
}
