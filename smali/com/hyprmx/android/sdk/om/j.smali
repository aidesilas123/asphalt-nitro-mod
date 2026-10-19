###### Class com.hyprmx.android.sdk.om.j (com.hyprmx.android.sdk.om.j)
.class public final Lcom/hyprmx/android/sdk/om/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/om/f;


# instance fields
.field public final a:Lcom/iab/omid/library/jungroup/adsession/j;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/hyprmx/android/sdk/model/vast/a;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

.field public f:Lcom/iab/omid/library/jungroup/adsession/b;

.field public g:Lcom/iab/omid/library/jungroup/adsession/a;

.field public h:Lcom/iab/omid/library/jungroup/adsession/media/b;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/adsession/j;Ljava/lang/String;Lcom/hyprmx/android/sdk/model/vast/a;Ljava/lang/String;Lcom/hyprmx/android/sdk/assert/ThreadAssert;)V
    .registers 7

    const-string v0, "omPartner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omJSContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastAd"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customReferenceData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assert"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/om/j;->a:Lcom/iab/omid/library/jungroup/adsession/j;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/om/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/om/j;->c:Lcom/hyprmx/android/sdk/model/vast/a;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/om/j;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/hyprmx/android/sdk/om/j;->e:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    return-void
.end method


# virtual methods
.method public final a(F)Lcom/hyprmx/android/sdk/tracking/a;
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/j;->h:Lcom/iab/omid/library/jungroup/adsession/media/b;

    if-nez v0, :cond_a

    new-instance p1, Lcom/hyprmx/android/sdk/om/f$a;

    invoke-direct {p1}, Lcom/hyprmx/android/sdk/om/f$a;-><init>()V

    return-object p1

    :cond_a
    new-instance v1, Lcom/hyprmx/android/sdk/om/i;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0, p1}, Lcom/hyprmx/android/sdk/om/i;-><init>(Lcom/iab/omid/library/jungroup/adsession/media/b;F)V

    return-object v1
.end method

.method public final a(Ljava/util/ArrayList;)Lcom/iab/omid/library/jungroup/adsession/d;
    .registers 11

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    goto/16 :goto_c0

    :cond_10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hyprmx/android/sdk/model/vast/b;

    iget-object v2, v0, Lcom/hyprmx/android/sdk/model/vast/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hyprmx/android/sdk/model/vast/d;

    :try_start_37
    iget-object v4, v0, Lcom/hyprmx/android/sdk/model/vast/b;->d:Ljava/lang/String;

    if-eqz v4, :cond_68

    iget-object v4, v0, Lcom/hyprmx/android/sdk/model/vast/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/net/URL;

    iget-object v3, v3, Lcom/hyprmx/android/sdk/model/vast/d;->a:Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/hyprmx/android/sdk/model/vast/b;->d:Ljava/lang/String;

    const-string v7, "VendorKey is null or empty"

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_62

    const-string v7, "VerificationParameters is null or empty"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5c

    new-instance v7, Lcom/iab/omid/library/jungroup/adsession/k;

    invoke-direct {v7, v4, v5, v3}, Lcom/iab/omid/library/jungroup/adsession/k;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_74

    :cond_5c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_62
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_68
    new-instance v4, Ljava/net/URL;

    iget-object v3, v3, Lcom/hyprmx/android/sdk/model/vast/d;->a:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/iab/omid/library/jungroup/adsession/k;

    invoke-direct {v7, v1, v4, v1}, Lcom/iab/omid/library/jungroup/adsession/k;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    :goto_74
    const-string v3, "verificationScriptResource"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_7c} :catch_7d

    goto :goto_2b

    :catch_7d
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error converting vast AdVerification to OM VerificationScriptResource - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    goto :goto_2b

    :cond_94
    iget-object v3, p0, Lcom/hyprmx/android/sdk/om/j;->a:Lcom/iab/omid/library/jungroup/adsession/j;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/om/j;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/hyprmx/android/sdk/om/j;->d:Ljava/lang/String;

    const-string p1, "Partner is null"

    invoke-static {p1, v3}, Lcom/iab/omid/library/jungroup/d/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "OM SDK JS script content is null"

    invoke-static {p1, v5}, Lcom/iab/omid/library/jungroup/d/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v7, :cond_b7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x100

    if-gt p1, v0, :cond_af

    goto :goto_b7

    :cond_af
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CustomReferenceData is greater than 256 characters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b7
    :goto_b7
    new-instance v1, Lcom/iab/omid/library/jungroup/adsession/d;

    sget-object v8, Lcom/iab/omid/library/jungroup/adsession/e;->c:Lcom/iab/omid/library/jungroup/adsession/e;

    const/4 v4, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/iab/omid/library/jungroup/adsession/d;-><init>(Lcom/iab/omid/library/jungroup/adsession/j;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/iab/omid/library/jungroup/adsession/e;)V

    :goto_c0
    return-object v1
.end method

.method public synthetic a()V
    .registers 1

    invoke-static {p0}, Lcom/hyprmx/android/sdk/om/f$-CC;->b(Lcom/hyprmx/android/sdk/om/f;)V

    return-void
.end method

.method public synthetic a(Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/om/f$-CC;->c(Lcom/hyprmx/android/sdk/om/f;Landroid/view/View;)V

    return-void
.end method

.method public synthetic a(Landroid/view/View;Lcom/iab/omid/library/jungroup/adsession/g;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/hyprmx/android/sdk/om/f$-CC;->d(Lcom/hyprmx/android/sdk/om/f;Landroid/view/View;Lcom/iab/omid/library/jungroup/adsession/g;)V

    return-void
.end method

.method public synthetic b()V
    .registers 1

    invoke-static {p0}, Lcom/hyprmx/android/sdk/om/f$-CC;->e(Lcom/hyprmx/android/sdk/om/f;)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 11

    const-string v0, "Error signaling impression with error msg - "

    const-string v1, "Error creating ad or video events with error msg - "

    const-string v2, "adView"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/iab/omid/library/jungroup/adsession/i;->b:Lcom/iab/omid/library/jungroup/adsession/i;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/om/j;->c:Lcom/hyprmx/android/sdk/model/vast/a;

    invoke-virtual {v3}, Lcom/hyprmx/android/sdk/model/vast/a;->e()Ljava/util/ArrayList;

    move-result-object v3

    :try_start_11
    invoke-virtual {p0, v3}, Lcom/hyprmx/android/sdk/om/j;->a(Ljava/util/ArrayList;)Lcom/iab/omid/library/jungroup/adsession/d;

    move-result-object v3

    if-nez v3, :cond_1d

    const-string v2, "OM AdSessionContext is null."

    invoke-static {v2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    goto :goto_51

    :cond_1d
    sget-object v4, Lcom/iab/omid/library/jungroup/adsession/f;->c:Lcom/iab/omid/library/jungroup/adsession/f;

    sget-object v5, Lcom/iab/omid/library/jungroup/adsession/h;->c:Lcom/iab/omid/library/jungroup/adsession/h;

    invoke-static {v4, v5, v2, v2}, Lcom/iab/omid/library/jungroup/adsession/c;->a(Lcom/iab/omid/library/jungroup/adsession/f;Lcom/iab/omid/library/jungroup/adsession/h;Lcom/iab/omid/library/jungroup/adsession/i;Lcom/iab/omid/library/jungroup/adsession/i;)Lcom/iab/omid/library/jungroup/adsession/c;

    move-result-object v2

    sget-object v4, Lcom/iab/omid/library/jungroup/a;->a:Lcom/iab/omid/library/jungroup/c;

    iget-boolean v4, v4, Lcom/iab/omid/library/jungroup/c;->a:Z

    if-eqz v4, :cond_33

    new-instance v4, Lcom/iab/omid/library/jungroup/adsession/l;

    invoke-direct {v4, v2, v3}, Lcom/iab/omid/library/jungroup/adsession/l;-><init>(Lcom/iab/omid/library/jungroup/adsession/c;Lcom/iab/omid/library/jungroup/adsession/d;)V

    iput-object v4, p0, Lcom/hyprmx/android/sdk/om/j;->f:Lcom/iab/omid/library/jungroup/adsession/b;

    goto :goto_51

    :cond_33
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Method called before OM SDK activation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error creating or configuring open measurement ad session: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :goto_51
    invoke-interface {p0, p1}, Lcom/hyprmx/android/sdk/om/f;->c(Landroid/view/View;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/om/j;->f:Lcom/iab/omid/library/jungroup/adsession/b;

    if-eqz p1, :cond_82

    :try_start_58
    invoke-static {p1}, Lcom/iab/omid/library/jungroup/adsession/a;->a(Lcom/iab/omid/library/jungroup/adsession/b;)Lcom/iab/omid/library/jungroup/adsession/a;

    move-result-object p1

    iput-object p1, p0, Lcom/hyprmx/android/sdk/om/j;->g:Lcom/iab/omid/library/jungroup/adsession/a;

    iget-object p1, p0, Lcom/hyprmx/android/sdk/om/j;->f:Lcom/iab/omid/library/jungroup/adsession/b;

    invoke-static {p1}, Lcom/iab/omid/library/jungroup/adsession/media/b;->a(Lcom/iab/omid/library/jungroup/adsession/b;)Lcom/iab/omid/library/jungroup/adsession/media/b;

    move-result-object p1

    iput-object p1, p0, Lcom/hyprmx/android/sdk/om/j;->h:Lcom/iab/omid/library/jungroup/adsession/media/b;
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_66} :catch_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_66} :catch_67

    goto :goto_82

    :catch_67
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_74

    :catch_6e
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_74
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_82
    :goto_82
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/om/j;->d()Lcom/iab/omid/library/jungroup/adsession/b;

    move-result-object p1

    if-eqz p1, :cond_8b

    invoke-virtual {p1}, Lcom/iab/omid/library/jungroup/adsession/b;->a()V

    :cond_8b
    :try_start_8b
    iget-object p1, p0, Lcom/hyprmx/android/sdk/om/j;->g:Lcom/iab/omid/library/jungroup/adsession/a;

    if-eqz p1, :cond_d7

    iget-object v1, p0, Lcom/hyprmx/android/sdk/om/j;->c:Lcom/hyprmx/android/sdk/model/vast/a;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/model/vast/a;->b:Lcom/hyprmx/android/sdk/model/vast/e;

    iget-wide v2, v1, Lcom/hyprmx/android/sdk/model/vast/e;->b:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_a5

    iget-wide v4, v1, Lcom/hyprmx/android/sdk/model/vast/e;->a:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_a5

    const/4 v1, 0x1

    goto :goto_a6

    :cond_a5
    const/4 v1, 0x0

    :goto_a6
    if-eqz v1, :cond_b7

    const/16 v1, 0x3e8

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-float v1, v2

    new-instance v2, Lcom/iab/omid/library/jungroup/adsession/media/d;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v2, v6, v1}, Lcom/iab/omid/library/jungroup/adsession/media/d;-><init>(ZLjava/lang/Float;)V

    goto :goto_bd

    :cond_b7
    new-instance v2, Lcom/iab/omid/library/jungroup/adsession/media/d;

    const/4 v1, 0x0

    invoke-direct {v2, v7, v1}, Lcom/iab/omid/library/jungroup/adsession/media/d;-><init>(ZLjava/lang/Float;)V

    :goto_bd
    invoke-virtual {p1, v2}, Lcom/iab/omid/library/jungroup/adsession/a;->a(Lcom/iab/omid/library/jungroup/adsession/media/d;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_c0} :catch_c1

    goto :goto_d7

    :catch_c1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error signaling ad load event with error msg - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_d7
    :goto_d7
    :try_start_d7
    iget-object p1, p0, Lcom/hyprmx/android/sdk/om/j;->g:Lcom/iab/omid/library/jungroup/adsession/a;

    if-eqz p1, :cond_fa

    invoke-virtual {p1}, Lcom/iab/omid/library/jungroup/adsession/a;->a()V
    :try_end_de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d7 .. :try_end_de} :catch_e6
    .catch Ljava/lang/IllegalStateException; {:try_start_d7 .. :try_end_de} :catch_df

    goto :goto_fa

    :catch_df
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_ec

    :catch_e6
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_ec
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_fa
    :goto_fa
    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/om/j;->f:Lcom/iab/omid/library/jungroup/adsession/b;

    return-void
.end method

.method public synthetic c(Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/om/f$-CC;->f(Lcom/hyprmx/android/sdk/om/f;Landroid/view/View;)V

    return-void
.end method

.method public final d()Lcom/iab/omid/library/jungroup/adsession/b;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/j;->f:Lcom/iab/omid/library/jungroup/adsession/b;

    return-object v0
.end method
