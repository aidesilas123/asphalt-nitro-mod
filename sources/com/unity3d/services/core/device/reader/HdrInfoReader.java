package com.unity3d.services.core.device.reader;

import android.app.Activity;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import com.unity3d.services.core.configuration.ExperimentsReader;
import com.unity3d.services.core.misc.Utilities;
import com.unity3d.services.core.request.metrics.Metric;
import com.unity3d.services.core.request.metrics.SDKMetricsSender;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public class HdrInfoReader implements IHdrInfoReader {
    private static final AtomicBoolean _hdrMetricsCaptured = new AtomicBoolean(false);
    private static volatile HdrInfoReader _instance;
    private final SDKMetricsSender _sdkMetricsSender = (SDKMetricsSender) Utilities.getService(SDKMetricsSender.class);

    private HdrInfoReader() {
    }

    public static HdrInfoReader getInstance() {
        if (_instance == null) {
            synchronized (HdrInfoReader.class) {
                if (_instance == null) {
                    _instance = new HdrInfoReader();
                }
            }
        }
        return _instance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [int] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v8 */
    @Override // com.unity3d.services.core.device.reader.IHdrInfoReader
    public void captureHDRCapabilityMetrics(Activity activity, ExperimentsReader experimentsReader) {
        ?? IsScreenHdr;
        int i;
        int i2;
        int i3;
        if (activity != null && experimentsReader.getCurrentlyActiveExperiments().isCaptureHDRCapabilitiesEnabled()) {
            int i4 = 0;
            if (_hdrMetricsCaptured.compareAndSet(false, true)) {
                ArrayList arrayList = new ArrayList(5);
                if (Build.VERSION.SDK_INT >= 24) {
                    Display.HdrCapabilities hdrCapabilities = ((WindowManager) activity.getSystemService("window")).getDefaultDisplay().getHdrCapabilities();
                    int i5 = 0;
                    i = 0;
                    i2 = 0;
                    i3 = 0;
                    for (int i6 : hdrCapabilities.getSupportedHdrTypes()) {
                        if (i6 == 1) {
                            i5 = 1;
                        } else if (i6 == 2) {
                            i = 1;
                        } else if (i6 == 3) {
                            i3 = 1;
                        } else if (i6 == 4) {
                            i2 = 1;
                        }
                    }
                    long jRound = Math.round(hdrCapabilities.getDesiredMaxAverageLuminance());
                    long jRound2 = Math.round(hdrCapabilities.getDesiredMaxLuminance());
                    long jRound3 = Math.round(hdrCapabilities.getDesiredMinLuminance());
                    arrayList.add(new Metric("native_device_hdr_lum_max_average", Long.valueOf(jRound)));
                    arrayList.add(new Metric("native_device_hdr_lum_max", Long.valueOf(jRound2)));
                    arrayList.add(new Metric("native_device_hdr_lum_min", Long.valueOf(jRound3)));
                    if (Build.VERSION.SDK_INT >= 26) {
                        IsScreenHdr = activity.getResources().getConfiguration().isScreenHdr();
                        i4 = i5;
                    } else {
                        i4 = i5;
                        IsScreenHdr = 0;
                    }
                } else {
                    IsScreenHdr = 0;
                    i = 0;
                    i2 = 0;
                    i3 = 0;
                }
                arrayList.add(new Metric("native_device_hdr_dolby_vision", Integer.valueOf(i4)));
                arrayList.add(new Metric("native_device_hdr_hdr10", Integer.valueOf(i)));
                arrayList.add(new Metric("native_device_hdr_hdr10_plus", Integer.valueOf(i2)));
                arrayList.add(new Metric("native_device_hdr_hlg", Integer.valueOf(i3)));
                arrayList.add(new Metric("native_device_hdr_screen_hdr", Integer.valueOf((int) IsScreenHdr)));
                this._sdkMetricsSender.sendMetrics(arrayList);
            }
        }
    }
}
