###### Class com.tapjoy.internal.h9 (com.tapjoy.internal.h9)
.class public abstract Lcom/tapjoy/internal/h9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/ba;


# instance fields
.field public volatile b:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/tapjoy/internal/i2;->b:I

    sget v0, Lcom/tapjoy/internal/z6;->b:I

    new-instance v0, Lcom/tapjoy/internal/ba;

    invoke-direct {v0}, Lcom/tapjoy/internal/ba;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/h9;->b:Z

    return-void
.end method
