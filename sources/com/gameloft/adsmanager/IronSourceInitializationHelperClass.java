package com.gameloft.adsmanager;

/* JADX INFO: compiled from: IronSource.java */
/* JADX INFO: loaded from: classes2.dex */
class IronSourceInitializationHelperClass implements Runnable {
    IronSource ironSource;

    public IronSourceInitializationHelperClass(IronSource ironSource) {
        this.ironSource = ironSource;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Thread.sleep(25000L);
            if (this.ironSource.wasIronSourceSDKSuccessfullyInitialized) {
                return;
            }
            JavaUtils.AdsManagerLogError("IronSource.java", "IronSourceInitializationHelperClass run", "IronSource sdk failed to initialize after 25 seconds");
            this.ironSource.OnConfigurationFailed();
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
    }
}
