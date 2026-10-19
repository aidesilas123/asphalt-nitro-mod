###### Class com.google.common.base.Ticker (com.google.common.base.Ticker)
.class public abstract Lcom/google/common/base/Ticker;
.super Ljava/lang/Object;
.source "Ticker.java"


# static fields
.field private static final a:Lcom/google/common/base/Ticker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/Ticker$a;

    invoke-direct {v0}, Lcom/google/common/base/Ticker$a;-><init>()V

    sput-object v0, Lcom/google/common/base/Ticker;->a:Lcom/google/common/base/Ticker;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static systemTicker()Lcom/google/common/base/Ticker;
    .registers 1

    sget-object v0, Lcom/google/common/base/Ticker;->a:Lcom/google/common/base/Ticker;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method

###### Class com.google.common.base.Ticker.a (com.google.common.base.Ticker$a)
.class Lcom/google/common/base/Ticker$a;
.super Lcom/google/common/base/Ticker;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/Ticker;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    invoke-static {}, Lcom/google/common/base/j;->i()J

    move-result-wide v0

    return-wide v0
.end method
