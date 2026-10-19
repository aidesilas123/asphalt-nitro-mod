package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class EG extends AbstractC1512Yy {
    public static TimeInterpolator A0B;
    public static String[] A0C = {"K3xavpXOVVnTPS8V8FmisIpuez1NdmFn", "QjoCrUVtXYT15qNhmppxWCsnlOvXMRWn", "HVYav4KnfeU3lAWSFDiSVAYelCZD7hW1", "SKhwmHHGUoQzTLK2kw5WKB1efbL3jYLm", "aZpNXGptJoOcjVlsPlgA0RFw1bcc4fI1", "y8DDj9eTKGlZyxtiH83YwnquX80t2qUq", "Eqht3urb", "PkOCx2w9GPXTa0iGANdHxOJetOGxrMw0"};
    public ArrayList<AbstractC07714u> A0A = new ArrayList<>();
    public ArrayList<AbstractC07714u> A07 = new ArrayList<>();
    public ArrayList<C4A> A09 = new ArrayList<>();
    public ArrayList<AnonymousClass49> A08 = new ArrayList<>();
    public ArrayList<ArrayList<AbstractC07714u>> A01 = new ArrayList<>();
    public ArrayList<ArrayList<C4A>> A05 = new ArrayList<>();
    public ArrayList<ArrayList<AnonymousClass49>> A03 = new ArrayList<>();
    public ArrayList<AbstractC07714u> A00 = new ArrayList<>();
    public ArrayList<AbstractC07714u> A04 = new ArrayList<>();
    public ArrayList<AbstractC07714u> A06 = new ArrayList<>();
    public ArrayList<AbstractC07714u> A02 = new ArrayList<>();

    private void A01(AnonymousClass49 anonymousClass49) {
        if (anonymousClass49.A05 != null) {
            A07(anonymousClass49, anonymousClass49.A05);
        }
        if (anonymousClass49.A04 != null) {
            A07(anonymousClass49, anonymousClass49.A04);
        }
    }

    private void A03(final AbstractC07714u abstractC07714u) {
        final View view = abstractC07714u.A0H;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.A06.add(abstractC07714u);
        viewPropertyAnimatorAnimate.setDuration(A07()).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.redexgen.X.44
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                view.setAlpha(1.0f);
                this.A02.A0P(abstractC07714u);
                this.A02.A06.remove(abstractC07714u);
                this.A02.A0V();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    private void A04(AbstractC07714u abstractC07714u) {
        if (A0B == null) {
            A0B = new ValueAnimator().getInterpolator();
        }
        abstractC07714u.A0H.animate().setInterpolator(A0B);
        A0K(abstractC07714u);
    }

    private final void A05(List<AbstractC07714u> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).A0H.animate().cancel();
        }
    }

    private void A06(List<AnonymousClass49> list, AbstractC07714u abstractC07714u) {
        for (int size = list.size() - 1; size >= 0; size--) {
            AnonymousClass49 anonymousClass49 = list.get(size);
            if (A07(anonymousClass49, abstractC07714u) && anonymousClass49.A05 == null && anonymousClass49.A04 == null) {
                list.remove(anonymousClass49);
            }
        }
    }

    private boolean A07(AnonymousClass49 anonymousClass49, AbstractC07714u abstractC07714u) {
        boolean z = false;
        if (anonymousClass49.A04 == abstractC07714u) {
            anonymousClass49.A04 = null;
        } else {
            if (anonymousClass49.A05 != abstractC07714u) {
                return false;
            }
            anonymousClass49.A05 = null;
            z = true;
        }
        abstractC07714u.A0H.setAlpha(1.0f);
        abstractC07714u.A0H.setTranslationX(0.0f);
        abstractC07714u.A0H.setTranslationY(0.0f);
        A0Q(abstractC07714u, z);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.C4Y
    public final void A0I() {
        for (int size = this.A09.size() - 1; size >= 0; size--) {
            C4A c4a = this.A09.get(size);
            View view = c4a.A04.A0H;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            A0O(c4a.A04);
            this.A09.remove(size);
        }
        for (int size2 = this.A0A.size() - 1; size2 >= 0; size2--) {
            A0P(this.A0A.get(size2));
            this.A0A.remove(size2);
        }
        for (int size3 = this.A07.size() - 1; size3 >= 0; size3--) {
            AbstractC07714u abstractC07714u = this.A07.get(size3);
            abstractC07714u.A0H.setAlpha(1.0f);
            A0N(abstractC07714u);
            this.A07.remove(size3);
        }
        for (int size4 = this.A08.size() - 1; size4 >= 0; size4--) {
            A01(this.A08.get(size4));
        }
        this.A08.clear();
        if (A0L()) {
            for (int size5 = this.A05.size() - 1; size5 >= 0; size5--) {
                ArrayList<C4A> arrayList = this.A05.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    C4A c4a2 = arrayList.get(size6);
                    View view2 = c4a2.A04.A0H;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    A0O(c4a2.A04);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.A05.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.A01.size() - 1; size7 >= 0; size7--) {
                ArrayList<AbstractC07714u> arrayList2 = this.A01.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    AbstractC07714u abstractC07714u2 = arrayList2.get(size8);
                    abstractC07714u2.A0H.setAlpha(1.0f);
                    A0N(abstractC07714u2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.A01.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.A03.size() - 1; size9 >= 0; size9--) {
                ArrayList<AnonymousClass49> arrayList3 = this.A03.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    A01(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.A03.remove(arrayList3);
                    }
                }
            }
            A05(this.A06);
            A05(this.A04);
            A05(this.A00);
            A05(this.A02);
            A0A();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C4Y
    public final void A0J() {
        boolean z = !this.A0A.isEmpty();
        boolean z2 = !this.A09.isEmpty();
        boolean z3 = !this.A08.isEmpty();
        boolean z4 = !this.A07.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<AbstractC07714u> it = this.A0A.iterator();
            while (it.hasNext()) {
                A03(it.next());
            }
            this.A0A.clear();
            if (z2) {
                final ArrayList<C4A> arrayList = new ArrayList<>();
                arrayList.addAll(this.A09);
                this.A05.add(arrayList);
                this.A09.clear();
                Runnable runnable = new Runnable() { // from class: com.facebook.ads.redexgen.X.41
                    @Override // java.lang.Runnable
                    public final void run() {
                        for (C4A c4a : arrayList) {
                            this.A00.A0Y(c4a.A04, c4a.A00, c4a.A01, c4a.A02, c4a.A03);
                        }
                        arrayList.clear();
                        this.A00.A05.remove(arrayList);
                    }
                };
                if (z) {
                    C3H.A0E(arrayList.get(0).A04.A0H, runnable, A07());
                } else {
                    runnable.run();
                }
            }
            if (z3) {
                final ArrayList<AnonymousClass49> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.A08);
                this.A03.add(arrayList2);
                this.A08.clear();
                Runnable runnable2 = new Runnable() { // from class: com.facebook.ads.redexgen.X.42
                    @Override // java.lang.Runnable
                    public final void run() {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            this.A00.A0W((AnonymousClass49) it2.next());
                        }
                        arrayList2.clear();
                        this.A00.A03.remove(arrayList2);
                    }
                };
                if (z) {
                    C3H.A0E(arrayList2.get(0).A05.A0H, runnable2, A07());
                } else {
                    runnable2.run();
                }
            }
            if (z4) {
                final ArrayList<AbstractC07714u> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.A07);
                this.A01.add(arrayList3);
                this.A07.clear();
                Runnable runnable3 = new Runnable() { // from class: com.facebook.ads.redexgen.X.43
                    @Override // java.lang.Runnable
                    public final void run() {
                        Iterator it2 = arrayList3.iterator();
                        while (it2.hasNext()) {
                            this.A00.A0X((AbstractC07714u) it2.next());
                        }
                        arrayList3.clear();
                        this.A00.A01.remove(arrayList3);
                    }
                };
                if (!z && !z2 && !z3) {
                    runnable3.run();
                    return;
                }
                if (A0C[0].charAt(3) == 'S') {
                    throw new RuntimeException();
                }
                String[] strArr = A0C;
                strArr[4] = "oGS3g0YSOogxL8fDiPQ9wWzcLRV8E0qu";
                strArr[3] = "UwBhVdK7HoWqzQqehBBKiWd5H5AJwN9O";
                C3H.A0E(arrayList3.get(0).A0H, runnable3, Math.max(z2 ? A06() : 0L, z3 ? A05() : 0L) + (z ? A07() : 0L));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d6, code lost:
    
        r5 = r5 - 1;
     */
    @Override // com.facebook.ads.redexgen.X.C4Y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0K(com.facebook.ads.redexgen.X.AbstractC07714u r10) {
        /*
            Method dump skipped, instruction units count: 312
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.EG.A0K(com.facebook.ads.redexgen.X.4u):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0073  */
    @Override // com.facebook.ads.redexgen.X.C4Y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A0L() {
        /*
            r4 = this;
            java.util.ArrayList<com.facebook.ads.redexgen.X.4u> r0 = r4.A07
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<com.facebook.ads.redexgen.X.49> r0 = r4.A08
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<com.facebook.ads.redexgen.X.4A> r0 = r4.A09
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<com.facebook.ads.redexgen.X.4u> r0 = r4.A0A
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<com.facebook.ads.redexgen.X.4u> r0 = r4.A04
            boolean r3 = r0.isEmpty()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.EG.A0C
            r0 = 2
            r1 = r2[r0]
            r0 = 5
            r2 = r2[r0]
            r0 = 18
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto La5
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.EG.A0C
            java.lang.String r1 = "HATKbuX1ioRbKjbJza4uRkbMkwnilInw"
            r0 = 4
            r2[r0] = r1
            java.lang.String r1 = "55W5G9gSwoJRpeM2nuMk9rdzPBhIsXI5"
            r0 = 3
            r2[r0] = r1
            if (r3 == 0) goto Lb8
            java.util.ArrayList<com.facebook.ads.redexgen.X.4u> r0 = r4.A06
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<com.facebook.ads.redexgen.X.4u> r0 = r4.A00
            boolean r3 = r0.isEmpty()
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.EG.A0C
            r0 = 2
            r1 = r2[r0]
            r0 = 5
            r2 = r2[r0]
            r0 = 18
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto La2
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.EG.A0C
            java.lang.String r1 = "PBqWGImhwZdo7IXQpaNFK9QlBHxMp4wk"
            r0 = 7
            r2[r0] = r1
            if (r3 == 0) goto Lb8
        L73:
            java.util.ArrayList<com.facebook.ads.redexgen.X.4u> r0 = r4.A02
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<java.util.ArrayList<com.facebook.ads.redexgen.X.4A>> r0 = r4.A05
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<java.util.ArrayList<com.facebook.ads.redexgen.X.4u>> r0 = r4.A01
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Lb8
            java.util.ArrayList<java.util.ArrayList<com.facebook.ads.redexgen.X.49>> r3 = r4.A03
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.EG.A0C
            r0 = 7
            r1 = r1[r0]
            r0 = 30
            char r1 = r1.charAt(r0)
            r0 = 119(0x77, float:1.67E-43)
            if (r1 == r0) goto Lab
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        La2:
            if (r3 == 0) goto Lb8
            goto L73
        La5:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        Lab:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.EG.A0C
            java.lang.String r1 = "80rjjAfjuSoUPBYOWBOUrC4mhnJBtDwK"
            r0 = 7
            r2[r0] = r1
            boolean r0 = r3.isEmpty()
            if (r0 != 0) goto Lba
        Lb8:
            r0 = 1
        Lb9:
            return r0
        Lba:
            r0 = 0
            goto Lb9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.EG.A0L():boolean");
    }

    @Override // com.facebook.ads.redexgen.X.C4Y
    public final boolean A0M(AbstractC07714u abstractC07714u, List<Object> list) {
        return !list.isEmpty() || super.A0M(abstractC07714u, list);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1512Yy
    public final boolean A0R(AbstractC07714u abstractC07714u) {
        A04(abstractC07714u);
        abstractC07714u.A0H.setAlpha(0.0f);
        this.A07.add(abstractC07714u);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1512Yy
    public final boolean A0S(AbstractC07714u abstractC07714u) {
        A04(abstractC07714u);
        this.A0A.add(abstractC07714u);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1512Yy
    public final boolean A0T(AbstractC07714u abstractC07714u, int i, int i2, int i3, int i4) {
        View view = abstractC07714u.A0H;
        int translationX = i + ((int) abstractC07714u.A0H.getTranslationX());
        int translationY = i2 + ((int) abstractC07714u.A0H.getTranslationY());
        A04(abstractC07714u);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            A0O(abstractC07714u);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.A09.add(new C4A(abstractC07714u, translationX, translationY, i3, i4));
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1512Yy
    public final boolean A0U(AbstractC07714u abstractC07714u, AbstractC07714u abstractC07714u2, int i, int i2, int i3, int i4) {
        if (abstractC07714u == abstractC07714u2) {
            return A0T(abstractC07714u, i, i2, i3, i4);
        }
        float translationX = abstractC07714u.A0H.getTranslationX();
        float translationY = abstractC07714u.A0H.getTranslationY();
        float alpha = abstractC07714u.A0H.getAlpha();
        A04(abstractC07714u);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        abstractC07714u.A0H.setTranslationX(translationX);
        abstractC07714u.A0H.setTranslationY(translationY);
        abstractC07714u.A0H.setAlpha(alpha);
        if (abstractC07714u2 != null) {
            A04(abstractC07714u2);
            abstractC07714u2.A0H.setTranslationX(-i5);
            abstractC07714u2.A0H.setTranslationY(-i6);
            abstractC07714u2.A0H.setAlpha(0.0f);
        }
        this.A08.add(new AnonymousClass49(abstractC07714u, abstractC07714u2, i, i2, i3, i4));
        return true;
    }

    public final void A0V() {
        if (A0L()) {
            return;
        }
        A0A();
    }

    public final void A0W(final AnonymousClass49 anonymousClass49) {
        AbstractC07714u abstractC07714u = anonymousClass49.A05;
        final View view = abstractC07714u == null ? null : abstractC07714u.A0H;
        AbstractC07714u abstractC07714u2 = anonymousClass49.A04;
        final View view2 = abstractC07714u2 != null ? abstractC07714u2.A0H : null;
        if (view != null) {
            final ViewPropertyAnimator duration = view.animate().setDuration(A05());
            this.A02.add(anonymousClass49.A05);
            duration.translationX(anonymousClass49.A02 - anonymousClass49.A00);
            duration.translationY(anonymousClass49.A03 - anonymousClass49.A01);
            duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.redexgen.X.47
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view.setAlpha(1.0f);
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                    this.A03.A0Q(anonymousClass49.A05, true);
                    this.A03.A02.remove(anonymousClass49.A05);
                    this.A03.A0V();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                }
            }).start();
        }
        if (view2 != null) {
            final ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.A02.add(anonymousClass49.A04);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(A05()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.redexgen.X.48
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    viewPropertyAnimatorAnimate.setListener(null);
                    view2.setAlpha(1.0f);
                    view2.setTranslationX(0.0f);
                    view2.setTranslationY(0.0f);
                    this.A03.A0Q(anonymousClass49.A04, false);
                    this.A03.A02.remove(anonymousClass49.A04);
                    this.A03.A0V();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                }
            }).start();
        }
    }

    public final void A0X(final AbstractC07714u abstractC07714u) {
        final View view = abstractC07714u.A0H;
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.A00.add(abstractC07714u);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(A04()).setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.redexgen.X.45
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                this.A02.A0N(abstractC07714u);
                this.A02.A00.remove(abstractC07714u);
                this.A02.A0V();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    public final void A0Y(final AbstractC07714u abstractC07714u, int i, int i2, int i3, int i4) {
        final View view = abstractC07714u.A0H;
        final int i5 = i3 - i;
        final int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i6 != 0) {
            view.animate().translationY(0.0f);
        }
        final ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.A04.add(abstractC07714u);
        viewPropertyAnimatorAnimate.setDuration(A06()).setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.redexgen.X.46
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                if (i5 != 0) {
                    view.setTranslationX(0.0f);
                }
                if (i6 != 0) {
                    view.setTranslationY(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                viewPropertyAnimatorAnimate.setListener(null);
                this.A04.A0O(abstractC07714u);
                this.A04.A04.remove(abstractC07714u);
                this.A04.A0V();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        }).start();
    }
}
