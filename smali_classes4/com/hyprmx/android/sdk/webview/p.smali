###### Class com.hyprmx.android.sdk.webview.p (com.hyprmx.android.sdk.webview.p)
.class public final Lcom/hyprmx/android/sdk/webview/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Z


# direct methods
.method public constructor <init>(ZZZZZZZZZZZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 16

    const-string v0, "backgroundColor"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customUserAgent"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/hyprmx/android/sdk/webview/p;->a:Z

    iput-boolean p2, p0, Lcom/hyprmx/android/sdk/webview/p;->b:Z

    iput-boolean p3, p0, Lcom/hyprmx/android/sdk/webview/p;->c:Z

    iput-boolean p4, p0, Lcom/hyprmx/android/sdk/webview/p;->d:Z

    iput-boolean p5, p0, Lcom/hyprmx/android/sdk/webview/p;->e:Z

    iput-boolean p6, p0, Lcom/hyprmx/android/sdk/webview/p;->f:Z

    iput-boolean p7, p0, Lcom/hyprmx/android/sdk/webview/p;->g:Z

    iput-boolean p8, p0, Lcom/hyprmx/android/sdk/webview/p;->h:Z

    iput-boolean p9, p0, Lcom/hyprmx/android/sdk/webview/p;->i:Z

    iput-boolean p10, p0, Lcom/hyprmx/android/sdk/webview/p;->j:Z

    iput-boolean p11, p0, Lcom/hyprmx/android/sdk/webview/p;->k:Z

    iput-object p12, p0, Lcom/hyprmx/android/sdk/webview/p;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/hyprmx/android/sdk/webview/p;->m:Ljava/lang/String;

    iput-boolean p14, p0, Lcom/hyprmx/android/sdk/webview/p;->n:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/hyprmx/android/sdk/webview/p;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/hyprmx/android/sdk/webview/p;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->a:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/p;->a:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->b:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/p;->b:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->c:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/p;->c:Z

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->d:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/p;->d:Z

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->e:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/p;->e:Z

    if-eq v1, v3, :cond_2f

    return v2

    :cond_2f
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->f:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/p;->f:Z

    if-eq v1, v3, :cond_36

    return v2

    :cond_36
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->g:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/p;->g:Z

    if-eq v1, v3, :cond_3d

    return v2

    :cond_3d
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->h:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/p;->h:Z

    if-eq v1, v3, :cond_44

    return v2

    :cond_44
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->i:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/p;->i:Z

    if-eq v1, v3, :cond_4b

    return v2

    :cond_4b
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->j:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/p;->j:Z

    if-eq v1, v3, :cond_52

    return v2

    :cond_52
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->k:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/p;->k:Z

    if-eq v1, v3, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/hyprmx/android/sdk/webview/p;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/hyprmx/android/sdk/webview/p;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/hyprmx/android/sdk/webview/p;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/hyprmx/android/sdk/webview/p;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->n:Z

    iget-boolean p1, p1, Lcom/hyprmx/android/sdk/webview/p;->n:Z

    if-eq v1, p1, :cond_76

    return v2

    :cond_76
    return v0
.end method

.method public final hashCode()I
    .registers 4

    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/webview/p;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :cond_6
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/p;->b:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :cond_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/p;->c:Z

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    :cond_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/p;->d:Z

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/p;->e:Z

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    :cond_25
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/p;->f:Z

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    :cond_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/p;->g:Z

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    :cond_35
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/p;->h:Z

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    :cond_3d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/p;->i:Z

    if-eqz v2, :cond_45

    const/4 v2, 0x1

    :cond_45
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/p;->j:Z

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    :cond_4d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/p;->k:Z

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    :cond_55
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hyprmx/android/sdk/webview/p;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/hyprmx/android/sdk/webview/p;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/p;->n:Z

    if-eqz v2, :cond_6f

    goto :goto_70

    :cond_6f
    move v1, v2

    :goto_70
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebViewConfigUpdate(scrollable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bounceEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowPinchGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", linkPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", javascriptEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", domStorageEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", loadWithOverviewMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useWideViewPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayZoomControls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", builtInZoomControls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportMultiWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/webview/p;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customUserAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/webview/p;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playbackRequiresUserAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/p;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
