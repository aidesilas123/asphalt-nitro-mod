###### Class com.bytedance.sdk.openadsdk.core.nativeexpress.m (com.bytedance.sdk.openadsdk.core.nativeexpress.m)
.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;
.super Ljava/lang/Object;
.source "Mode.java"


# instance fields
.field public a:I

.field public b:F

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IFII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->a:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->b:F

    const/16 v0, 0x258

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->c:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->d:I

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->a:I

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->b:F

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->c:I

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/m;->d:I

    return-void
.end method
