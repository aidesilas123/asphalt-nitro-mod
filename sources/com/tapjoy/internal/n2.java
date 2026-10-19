package com.tapjoy.internal;

import java.util.Observable;

/* JADX INFO: loaded from: classes4.dex */
public final class n2 extends Observable {
    @Override // java.util.Observable
    public final void notifyObservers() {
        setChanged();
        super.notifyObservers();
    }

    @Override // java.util.Observable
    public final void notifyObservers(Object obj) {
        setChanged();
        super.notifyObservers(obj);
    }
}
