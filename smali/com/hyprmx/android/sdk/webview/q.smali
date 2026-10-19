###### Class com.hyprmx.android.sdk.webview.q (com.hyprmx.android.sdk.webview.q)
.class public final Lcom/hyprmx/android/sdk/webview/q;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/hyprmx/android/sdk/webview/q;->a:Z

    iput-boolean p2, p0, Lcom/hyprmx/android/sdk/webview/q;->b:Z

    iput-boolean p3, p0, Lcom/hyprmx/android/sdk/webview/q;->c:Z

    iput-boolean p4, p0, Lcom/hyprmx/android/sdk/webview/q;->d:Z

    iput-boolean p5, p0, Lcom/hyprmx/android/sdk/webview/q;->e:Z

    iput-boolean p6, p0, Lcom/hyprmx/android/sdk/webview/q;->f:Z

    iput-boolean p7, p0, Lcom/hyprmx/android/sdk/webview/q;->g:Z

    iput-boolean p8, p0, Lcom/hyprmx/android/sdk/webview/q;->h:Z

    iput-boolean p9, p0, Lcom/hyprmx/android/sdk/webview/q;->i:Z

    iput-boolean p10, p0, Lcom/hyprmx/android/sdk/webview/q;->j:Z

    iput-boolean p11, p0, Lcom/hyprmx/android/sdk/webview/q;->k:Z

    iput-object p12, p0, Lcom/hyprmx/android/sdk/webview/q;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/hyprmx/android/sdk/webview/q;->m:Ljava/lang/String;

    iput-boolean p14, p0, Lcom/hyprmx/android/sdk/webview/q;->n:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/hyprmx/android/sdk/webview/q;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/hyprmx/android/sdk/webview/q;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->a:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/q;->a:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->b:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/q;->b:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->c:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/q;->c:Z

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->d:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/q;->d:Z

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->e:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/q;->e:Z

    if-eq v1, v3, :cond_2f

    return v2

    :cond_2f
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->f:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/q;->f:Z

    if-eq v1, v3, :cond_36

    return v2

    :cond_36
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->g:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/q;->g:Z

    if-eq v1, v3, :cond_3d

    return v2

    :cond_3d
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->h:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/q;->h:Z

    if-eq v1, v3, :cond_44

    return v2

    :cond_44
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->i:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/q;->i:Z

    if-eq v1, v3, :cond_4b

    return v2

    :cond_4b
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->j:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/q;->j:Z

    if-eq v1, v3, :cond_52

    return v2

    :cond_52
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->k:Z

    iget-boolean v3, p1, Lcom/hyprmx/android/sdk/webview/q;->k:Z

    if-eq v1, v3, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/hyprmx/android/sdk/webview/q;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/hyprmx/android/sdk/webview/q;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/hyprmx/android/sdk/webview/q;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/hyprmx/android/sdk/webview/q;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->n:Z

    iget-boolean p1, p1, Lcom/hyprmx/android/sdk/webview/q;->n:Z

    if-eq v1, p1, :cond_76

    return v2

    :cond_76
    return v0
.end method

.method public final hashCode()I
    .registers 4

    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/webview/q;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :cond_6
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/q;->b:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :cond_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/q;->c:Z

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    :cond_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/q;->d:Z

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/q;->e:Z

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    :cond_25
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/q;->f:Z

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    :cond_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/q;->g:Z

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    :cond_35
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/q;->h:Z

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    :cond_3d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/q;->i:Z

    if-eqz v2, :cond_45

    const/4 v2, 0x1

    :cond_45
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/q;->j:Z

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    :cond_4d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/webview/q;->k:Z

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    :cond_55
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/hyprmx/android/sdk/webview/q;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/hyprmx/android/sdk/webview/q;->m:Ljava/lang/String;

    if-nez v0, :cond_67

    const/4 v0, 0x0

    goto :goto_6b

    :cond_67
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6b
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/webview/q;->n:Z

    if-eqz v0, :cond_73

    goto :goto_74

    :cond_73
    move v1, v0

    :goto_74
    add-int/2addr v2, v1

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebViewConfiguration(scrollable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bounceEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowPinchGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", linkPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", javascriptEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", domStorageEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", loadWithOverviewMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useWideViewPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayZoomControls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", builtInZoomControls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportMultiWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/webview/q;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", customUserAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/webview/q;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playbackRequiresUserAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/webview/q;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
