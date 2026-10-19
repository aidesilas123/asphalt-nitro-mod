package com.gameloft.adsmanager;

import com.gameloft.adsmanager.JavaUtils;
import com.gameloft.adsmanager.OfferWall.BaseOfferWallObject;

/* JADX INFO: loaded from: classes2.dex */
public class TapjoyOfferWall extends BaseOfferWallObject {
    private Tapjoy parent;
    public String sdkLocation;

    public TapjoyOfferWall(Tapjoy tapjoy, String str) {
        super(tapjoy);
        this.sdkLocation = str;
        this.parent = tapjoy;
    }

    @Override // com.gameloft.adsmanager.OfferWall.OfferWallObjectInterface
    public void Close() {
    }

    @Override // com.gameloft.adsmanager.OfferWall.OfferWallObjectInterface
    public void Destroy() {
    }

    @Override // com.gameloft.adsmanager.OfferWall.OfferWallObjectInterface
    public boolean IsValid() {
        return true;
    }

    @Override // com.gameloft.adsmanager.OfferWall.OfferWallObjectInterface
    public void Show(String str, String str2) {
        this.parent.onScreenOfferWall = this;
        JavaUtils.PostAndLogException(AdsManager.parentViewGroup, new Runnable() { // from class: com.gameloft.adsmanager.TapjoyOfferWall.1
            @Override // java.lang.Runnable
            public void run() {
                TapjoyOfferWall.this.parent.OnPauseGameAudio();
                if (TapjoyOfferWall.this.parent.tapjoyPlacement.g()) {
                    TapjoyOfferWall.this.parent.tapjoyPlacement.j();
                }
            }
        }, new Runnable() { // from class: com.gameloft.adsmanager.TapjoyOfferWall.2
            @Override // java.lang.Runnable
            public void run() {
                TapjoyOfferWall tapjoyOfferWall = TapjoyOfferWall.this;
                tapjoyOfferWall.OnShowError(JavaUtils.Errors.ERROR_EXCEPTION_RAISED, tapjoyOfferWall.sdkLocation);
                TapjoyOfferWall.this.parent.ResetOfferWall();
            }
        });
    }
}
