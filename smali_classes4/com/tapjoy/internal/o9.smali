###### Class com.tapjoy.internal.o9 (com.tapjoy.internal.o9)
.class public final Lcom/tapjoy/internal/o9;
.super Lcom/tapjoy/internal/b;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/x5;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/d9;

    invoke-direct {v0}, Lcom/tapjoy/internal/d9;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/tapjoy/internal/b;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/o9;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/internal/o9;->c:Ljava/lang/String;

    return-void
.end method
