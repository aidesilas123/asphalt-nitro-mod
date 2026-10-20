###### Class com.hyprmx.android.sdk.om.h (com.hyprmx.android.sdk.om.h)
.class public final Lcom/hyprmx/android/sdk/om/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/om/f;


# instance fields
.field public final a:Lcom/iab/omid/library/jungroup/adsession/j;

.field public final b:Ljava/lang/String;

.field public c:Lcom/iab/omid/library/jungroup/adsession/b;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/adsession/j;Ljava/lang/String;)V
    .registers 4

    const-string v0, "omPartner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/om/h;->a:Lcom/iab/omid/library/jungroup/adsession/j;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/om/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic a(F)Lcom/hyprmx/android/sdk/tracking/a;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/om/f$-CC;->a(Lcom/hyprmx/android/sdk/om/f;F)Lcom/hyprmx/android/sdk/tracking/a;

    move-result-object p1

    return-object p1
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
    .registers 12

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/h;->b:Ljava/lang/String;

    const-string v1, "jsonString"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "forVideo"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "customData"

    invoke-static {v2, v1}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    sget-object v1, Lcom/iab/omid/library/jungroup/adsession/i;->d:Lcom/iab/omid/library/jungroup/adsession/i;

    if-eqz v0, :cond_23

    sget-object v1, Lcom/iab/omid/library/jungroup/adsession/i;->c:Lcom/iab/omid/library/jungroup/adsession/i;

    :cond_23
    move-object v5, p1

    check-cast v5, Landroid/webkit/WebView;

    :try_start_26
    iget-object v4, p0, Lcom/hyprmx/android/sdk/om/h;->a:Lcom/iab/omid/library/jungroup/adsession/j;

    const-string v0, "Partner is null"

    invoke-static {v0, v4}, Lcom/iab/omid/library/jungroup/d/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "WebView is null"

    invoke-static {v0, v5}, Lcom/iab/omid/library/jungroup/d/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v8, :cond_45

    const-string v0, "CustomReferenceData is greater than 256 characters"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x100

    if-gt v2, v3, :cond_3f

    goto :goto_45

    :cond_3f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    :goto_45
    new-instance v0, Lcom/iab/omid/library/jungroup/adsession/d;

    sget-object v9, Lcom/iab/omid/library/jungroup/adsession/e;->b:Lcom/iab/omid/library/jungroup/adsession/e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/iab/omid/library/jungroup/adsession/d;-><init>(Lcom/iab/omid/library/jungroup/adsession/j;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/iab/omid/library/jungroup/adsession/e;)V

    sget-object v2, Lcom/iab/omid/library/jungroup/adsession/f;->b:Lcom/iab/omid/library/jungroup/adsession/f;

    sget-object v3, Lcom/iab/omid/library/jungroup/adsession/h;->b:Lcom/iab/omid/library/jungroup/adsession/h;

    sget-object v4, Lcom/iab/omid/library/jungroup/adsession/i;->c:Lcom/iab/omid/library/jungroup/adsession/i;

    invoke-static {v2, v3, v4, v1}, Lcom/iab/omid/library/jungroup/adsession/c;->a(Lcom/iab/omid/library/jungroup/adsession/f;Lcom/iab/omid/library/jungroup/adsession/h;Lcom/iab/omid/library/jungroup/adsession/i;Lcom/iab/omid/library/jungroup/adsession/i;)Lcom/iab/omid/library/jungroup/adsession/c;

    move-result-object v1

    sget-object v2, Lcom/iab/omid/library/jungroup/a;->a:Lcom/iab/omid/library/jungroup/c;

    iget-boolean v2, v2, Lcom/iab/omid/library/jungroup/c;->a:Z

    if-eqz v2, :cond_67

    new-instance v2, Lcom/iab/omid/library/jungroup/adsession/l;

    invoke-direct {v2, v1, v0}, Lcom/iab/omid/library/jungroup/adsession/l;-><init>(Lcom/iab/omid/library/jungroup/adsession/c;Lcom/iab/omid/library/jungroup/adsession/d;)V

    iput-object v2, p0, Lcom/hyprmx/android/sdk/om/h;->c:Lcom/iab/omid/library/jungroup/adsession/b;

    goto :goto_85

    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method called before OM SDK activation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_6f} :catch_6f

    :catch_6f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error creating or configuring open measurement ad session: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :goto_85
    invoke-interface {p0, p1}, Lcom/hyprmx/android/sdk/om/f;->c(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/om/h;->d()Lcom/iab/omid/library/jungroup/adsession/b;

    move-result-object p1

    if-eqz p1, :cond_91

    invoke-virtual {p1}, Lcom/iab/omid/library/jungroup/adsession/b;->a()V

    :cond_91
    return-void
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/om/h;->c:Lcom/iab/omid/library/jungroup/adsession/b;

    return-void
.end method

.method public synthetic c(Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/om/f$-CC;->f(Lcom/hyprmx/android/sdk/om/f;Landroid/view/View;)V

    return-void
.end method

.method public final d()Lcom/iab/omid/library/jungroup/adsession/b;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/h;->c:Lcom/iab/omid/library/jungroup/adsession/b;

    return-object v0
.end method
