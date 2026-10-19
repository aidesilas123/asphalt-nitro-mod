###### Class com.tapjoy.internal.x8 (com.tapjoy.internal.x8)
.class public final Lcom/tapjoy/internal/x8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/x8;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/tapjoy/internal/x8;->a:Ljava/lang/Object;

    return-void
.end method
