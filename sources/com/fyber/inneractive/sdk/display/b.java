package com.fyber.inneractive.sdk.display;

import android.app.Activity;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.fyber.inneractive.sdk.activities.InneractiveFullscreenAdActivity;
import com.fyber.inneractive.sdk.config.enums.Orientation;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveAdSpotManager;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.flow.z;
import com.fyber.inneractive.sdk.interfaces.c;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class b extends a implements c.a {
    public InneractiveAdSpot a;
    public com.fyber.inneractive.sdk.interfaces.c b;

    /* JADX WARN: Type inference failed for: r1v0, types: [AdContent extends com.fyber.inneractive.sdk.flow.q, com.fyber.inneractive.sdk.flow.q] */
    /* JADX WARN: Type inference failed for: r1v2, types: [EventsListener extends com.fyber.inneractive.sdk.external.InneractiveUnitController$EventsListener, com.fyber.inneractive.sdk.external.InneractiveUnitController$EventsListener] */
    @Override // com.fyber.inneractive.sdk.display.a
    public void a(@NonNull Activity activity, @NonNull InneractiveAdSpot inneractiveAdSpot, @NonNull String str) {
        InneractiveAdSpot spot;
        if (TextUtils.isEmpty(str) || (spot = InneractiveAdSpotManager.get().getSpot(str)) == null || spot.getAdContent() == null) {
            spot = null;
        }
        this.a = spot;
        if (spot != null) {
            InneractiveUnitController selectedUnitController = spot.getSelectedUnitController();
            if (selectedUnitController instanceof InneractiveFullscreenAdActivity.FullScreenRendererProvider) {
                com.fyber.inneractive.sdk.interfaces.c fullscreenRenderer = ((InneractiveFullscreenAdActivity.FullScreenRendererProvider) selectedUnitController).getFullscreenRenderer();
                this.b = fullscreenRenderer;
                if (fullscreenRenderer != null) {
                    InneractiveAdSpot inneractiveAdSpot2 = this.a;
                    z zVar = (z) fullscreenRenderer;
                    zVar.a = inneractiveAdSpot2;
                    zVar.b = inneractiveAdSpot2.getAdContent();
                    zVar.c = inneractiveAdSpot2.getSelectedUnitController().getEventsListener();
                    zVar.v.a = inneractiveAdSpot2;
                    try {
                        this.b.a(this, activity);
                    } catch (Resources.NotFoundException e2) {
                        IAlog.e("Interstitial Activity: %s", e2.getMessage());
                    } catch (InneractiveUnitController.AdDisplayError e3) {
                        IAlog.e("Interstitial Activity: %s", e3.getMessage());
                    }
                }
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c.a
    public void destroy() {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c.a
    public void disableCloseButton() {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c.a
    public void dismissAd(boolean z) {
        com.fyber.inneractive.sdk.interfaces.c cVar = this.b;
        if (cVar != null) {
            cVar.destroy();
            this.b = null;
        }
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c.a
    public View getCloseButton() {
        return null;
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c.a
    public ViewGroup getLayout() {
        return null;
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c.a
    public boolean isCloseButtonDisplay() {
        return false;
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c.a
    public void secondEndCardWasDisplayed() {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c.a
    public void setActivityOrientation(boolean z, Orientation orientation) {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c.a
    public void showCloseButton(boolean z, int i, int i2) {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c.a
    public void showCloseCountdown() {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c.a
    public void updateCloseCountdown(int i) {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c.a
    public boolean wasDismissedByUser() {
        return false;
    }
}
