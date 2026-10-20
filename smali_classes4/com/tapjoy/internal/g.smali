###### Class com.tapjoy.internal.g (com.tapjoy.internal.g)
.class public abstract Lcom/tapjoy/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/b9;

.field public static final b:Lcom/tapjoy/internal/m9;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/b9;

    invoke-direct {v0}, Lcom/tapjoy/internal/b9;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/g;->a:Lcom/tapjoy/internal/b9;

    new-instance v0, Lcom/tapjoy/internal/m9;

    invoke-direct {v0}, Lcom/tapjoy/internal/m9;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/g;->b:Lcom/tapjoy/internal/m9;

    return-void
.end method
