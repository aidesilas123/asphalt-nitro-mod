###### Class com.tapjoy.internal.ba (com.tapjoy.internal.ba)
.class public final Lcom/tapjoy/internal/ba;
.super Lcom/tapjoy/o0;
.source "SourceFile"


# instance fields
.field public final f:Lcom/tapjoy/internal/aa;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/tapjoy/o0;-><init>()V

    new-instance v0, Lcom/tapjoy/internal/aa;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/aa;-><init>(Lcom/tapjoy/internal/ba;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ba;->f:Lcom/tapjoy/internal/aa;

    return-void
.end method

.method public static synthetic a(Lcom/tapjoy/internal/ba;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/internal/b1;)Z
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tapjoy/o0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/n;)Z

    move-result p0

    return p0
.end method
