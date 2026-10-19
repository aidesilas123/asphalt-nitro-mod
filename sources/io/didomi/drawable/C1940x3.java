package io.didomi.drawable;

import android.text.Editable;
import android.text.Html;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.List;
import java.util.Vector;
import kotlin.Metadata;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import org.xml.sax.XMLReader;

/* JADX INFO: renamed from: io.didomi.sdk.x3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u0007B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0007\u0010\u000bJ\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\r\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000bJ/\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00040\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0016R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0016¨\u0006\u001a"}, d2 = {"Lio/didomi/sdk/x3;", "Landroid/text/Html$TagHandler;", "<init>", "()V", "", "tag", "", "a", "(Ljava/lang/String;)V", "Landroid/text/Editable;", "output", "(Landroid/text/Editable;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "c", "", "opening", "Lorg/xml/sax/XMLReader;", "xmlReader", "handleTag", "(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V", "Ljava/util/Vector;", "Ljava/util/Vector;", "parents", "", "counters", "android_release"}, mv = {1, 8, 0})
public final class C1940x3 implements Html.TagHandler {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Vector<String> parents = new Vector<>();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Vector<Integer> counters = new Vector<>();

    private final void a(Editable output) {
        if (this.parents.size() == 1) {
            output.append("\n");
        }
        Vector<String> vector = this.parents;
        vector.removeElementAt(vector.size() - 1);
        Vector<Integer> vector2 = this.counters;
        vector2.removeElementAt(vector2.size() - 1);
    }

    private final void a(String tag) {
        Vector<String> vector = this.parents;
        vector.add(vector.size(), tag);
        Vector<Integer> vector2 = this.counters;
        vector2.add(vector2.size(), 0);
    }

    private final void b(Editable output) {
        if (Intrinsics.areEqual(p.lastOrNull((List) this.parents), "ul-tag")) {
            d(output);
        } else if (Intrinsics.areEqual(p.lastOrNull((List) this.parents), "ol-tag")) {
            c(output);
        }
    }

    private final void c(Editable output) {
        if (output.length() > 0) {
            output.append("\n");
        }
        int size = this.counters.size();
        for (int i = 1; i < size; i++) {
            output.append("\t");
        }
        int iIntValue = this.counters.lastElement().intValue() + 1;
        output.append((CharSequence) (iIntValue + ". "));
        Vector<Integer> vector = this.counters;
        vector.removeElementAt(vector.size() - 1);
        Vector<Integer> vector2 = this.counters;
        vector2.add(vector2.size(), Integer.valueOf(iIntValue));
    }

    private final void d(Editable output) {
        if (output.length() > 0) {
            output.append("\n");
        }
        int size = this.counters.size();
        for (int i = 1; i < size; i++) {
            output.append("\t");
        }
        output.append("• ");
    }

    @Override // android.text.Html.TagHandler
    public void handleTag(boolean opening, String tag, Editable output, XMLReader xmlReader) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(xmlReader, "xmlReader");
        if (Intrinsics.areEqual(tag, "ul-tag") || Intrinsics.areEqual(tag, "ol-tag")) {
            if (opening) {
                a(tag);
                return;
            } else {
                a(output);
                return;
            }
        }
        if (Intrinsics.areEqual(tag, "li-tag") && opening) {
            b(output);
        }
    }
}
