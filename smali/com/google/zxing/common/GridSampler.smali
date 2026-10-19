###### Class com.google.zxing.common.GridSampler (com.google.zxing.common.GridSampler)
.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static a:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/zxing/common/c;

    invoke-direct {v0}, Lcom/google/zxing/common/c;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->a:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .registers 1

    sget-object v0, Lcom/google/zxing/common/GridSampler;->a:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .registers 1

    sput-object p0, Lcom/google/zxing/common/GridSampler;->a:Lcom/google/zxing/common/GridSampler;

    return-void
.end method
