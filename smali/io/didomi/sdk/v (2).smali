###### Class io.didomi.drawable.C1916v (io.didomi.sdk.v)
.class public Lio/didomi/sdk/v;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\r\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/didomi/sdk/v;",
        "Landroid/text/style/MetricAffectingSpan;",
        "",
        "offset",
        "<init>",
        "(I)V",
        "Landroid/text/TextPaint;",
        "textPaint",
        "a",
        "(Landroid/text/TextPaint;)I",
        "",
        "updateMeasureState",
        "(Landroid/text/TextPaint;)V",
        "updateDrawState",
        "I",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput p1, p0, Lio/didomi/sdk/v;->a:I

    return-void
.end method

.method private final a(Landroid/text/TextPaint;)I
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    add-float/2addr v0, p1

    const/4 p1, 0x2

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    iget v0, p0, Lio/didomi/sdk/v;->a:I

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4

    if-eqz p1, :cond_b

    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    invoke-direct {p0, p1}, Lio/didomi/sdk/v;->a(Landroid/text/TextPaint;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    :cond_b
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 4

    const-string v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    invoke-direct {p0, p1}, Lio/didomi/sdk/v;->a(Landroid/text/TextPaint;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    return-void
.end method
