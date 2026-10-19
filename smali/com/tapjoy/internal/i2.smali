###### Class com.tapjoy.internal.i2 (com.tapjoy.internal.i2)
.class public final Lcom/tapjoy/internal/i2;
.super Lcom/tapjoy/internal/y0;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final c:Lcom/tapjoy/internal/x1;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tapjoy/internal/i2;

    invoke-direct {v0}, Lcom/tapjoy/internal/i2;-><init>()V

    const-class v1, Lcom/tapjoy/internal/y0;

    monitor-enter v1

    :try_start_8
    sput-object v0, Lcom/tapjoy/internal/y0;->a:Lcom/tapjoy/internal/y0;

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/tapjoy/internal/y0;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/x1;

    invoke-direct {v0}, Lcom/tapjoy/internal/x1;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/i2;->c:Lcom/tapjoy/internal/x1;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/i2;->c:Lcom/tapjoy/internal/x1;

    iget-object v0, v0, Lcom/tapjoy/internal/y4;->a:Lcom/tapjoy/internal/m4;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
