package com.hyprmx.android.sdk.om;

import android.os.Handler;
import android.view.View;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.iab.omid.library.jungroup.adsession.l;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public interface f {

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.om.f$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static com.hyprmx.android.sdk.tracking.a a(f fVar, float f2) {
            return new a();
        }

        public static void b(f fVar) {
            com.iab.omid.library.jungroup.adsession.b bVarD = fVar.d();
            if (bVarD != null) {
                l lVar = (l) bVarD;
                if (!lVar.f4958g) {
                    lVar.f4955d.clear();
                    if (!lVar.f4958g) {
                        lVar.c.clear();
                    }
                    lVar.f4958g = true;
                    com.iab.omid.library.jungroup.b.f.a(lVar.f4956e.c(), "finishSession", new Object[0]);
                    com.iab.omid.library.jungroup.b.a aVar = com.iab.omid.library.jungroup.b.a.c;
                    boolean z = aVar.b.size() > 0;
                    aVar.a.remove(lVar);
                    aVar.b.remove(lVar);
                    if (z) {
                        if (!(aVar.b.size() > 0)) {
                            com.iab.omid.library.jungroup.b.g gVarA = com.iab.omid.library.jungroup.b.g.a();
                            gVarA.getClass();
                            com.iab.omid.library.jungroup.walking.b bVar = com.iab.omid.library.jungroup.walking.b.h;
                            bVar.getClass();
                            Handler handler = com.iab.omid.library.jungroup.walking.b.j;
                            if (handler != null) {
                                handler.removeCallbacks(com.iab.omid.library.jungroup.walking.b.l);
                                com.iab.omid.library.jungroup.walking.b.j = null;
                            }
                            bVar.a.clear();
                            com.iab.omid.library.jungroup.walking.b.i.post(new com.iab.omid.library.jungroup.walking.a(bVar));
                            com.iab.omid.library.jungroup.b.b bVar2 = com.iab.omid.library.jungroup.b.b.f4960d;
                            bVar2.a = false;
                            bVar2.b = false;
                            bVar2.c = null;
                            com.iab.omid.library.jungroup.a.d dVar = gVarA.f4963d;
                            dVar.a.getContentResolver().unregisterContentObserver(dVar);
                        }
                    }
                    lVar.f4956e.b();
                    lVar.f4956e = null;
                }
            }
            fVar.c();
        }

        public static void c(f fVar, View friendlyObstruction) {
            com.iab.omid.library.jungroup.b.c cVar;
            Intrinsics.checkNotNullParameter(friendlyObstruction, "friendlyObstruction");
            try {
                com.iab.omid.library.jungroup.adsession.b bVarD = fVar.d();
                if (bVarD != null) {
                    l lVar = (l) bVarD;
                    if (lVar.f4958g) {
                        return;
                    }
                    int i = l.k;
                    Iterator it = lVar.c.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            cVar = null;
                            break;
                        } else {
                            cVar = (com.iab.omid.library.jungroup.b.c) it.next();
                            if (cVar.a.get() == friendlyObstruction) {
                                break;
                            }
                        }
                    }
                    if (cVar != null) {
                        lVar.c.remove(cVar);
                    }
                }
            } catch (IllegalArgumentException e2) {
                HyprMXLog.e("Error removing registered obstruction with error msg - " + e2.getLocalizedMessage());
            }
        }

        public static void d(f fVar, View friendlyObstruction, com.iab.omid.library.jungroup.adsession.g purpose) {
            Intrinsics.checkNotNullParameter(friendlyObstruction, "friendlyObstruction");
            Intrinsics.checkNotNullParameter(purpose, "purpose");
            try {
                com.iab.omid.library.jungroup.adsession.b bVarD = fVar.d();
                if (bVarD != null) {
                    bVarD.a(friendlyObstruction, purpose);
                }
            } catch (IllegalArgumentException e2) {
                HyprMXLog.e("Error registering obstruction with error msg - " + e2.getLocalizedMessage());
            }
        }

        public static void e(f fVar) {
            com.iab.omid.library.jungroup.adsession.b bVarD = fVar.d();
            if (bVarD != null) {
                l lVar = (l) bVarD;
                if (lVar.f4958g) {
                    return;
                }
                lVar.c.clear();
            }
        }

        public static void f(f fVar, View adView) {
            Intrinsics.checkNotNullParameter(adView, "adView");
            com.iab.omid.library.jungroup.adsession.b bVarD = fVar.d();
            if (bVarD != null) {
                l lVar = (l) bVarD;
                if (lVar.f4958g) {
                    return;
                }
                com.iab.omid.library.jungroup.d.d.a("AdView is null", adView);
                if (lVar.f4955d.get() == adView) {
                    return;
                }
                lVar.a(adView);
                lVar.f4956e.d();
                Collection<l> collectionUnmodifiableCollection = Collections.unmodifiableCollection(com.iab.omid.library.jungroup.b.a.c.a);
                if (collectionUnmodifiableCollection == null || collectionUnmodifiableCollection.isEmpty()) {
                    return;
                }
                for (l lVar2 : collectionUnmodifiableCollection) {
                    if (lVar2 != lVar && lVar2.f4955d.get() == adView) {
                        lVar2.f4955d.clear();
                    }
                }
            }
        }
    }

    public static final class a implements com.hyprmx.android.sdk.tracking.a {
        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object a(long j, Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.a(this, j, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object a(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.b(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object b(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.c(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object c(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.d(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object d(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.e(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object e(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.f(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object f(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.g(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object g(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.h(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object h(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.i(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object i(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.j(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object j(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.k(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object k(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.l(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object l(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.m(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object m(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.n(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object n(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.o(this, continuation);
        }
    }

    com.hyprmx.android.sdk.tracking.a a(float f2);

    void a();

    void a(View view);

    void a(View view, com.iab.omid.library.jungroup.adsession.g gVar);

    void b();

    void b(View view);

    void c();

    void c(View view);

    com.iab.omid.library.jungroup.adsession.b d();
}
