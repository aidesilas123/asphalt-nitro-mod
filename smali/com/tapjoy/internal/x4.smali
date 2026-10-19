###### Class com.tapjoy.internal.x4 (com.tapjoy.internal.x4)
.class public final Lcom/tapjoy/internal/x4;
.super Lcom/tapjoy/internal/b;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/m6;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/k4;

    invoke-direct {v0}, Lcom/tapjoy/internal/k4;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/tapjoy/internal/b;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/x4;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/internal/x4;->c:Ljava/lang/String;

    iput p3, p0, Lcom/tapjoy/internal/x4;->d:I

    iput-object p4, p0, Lcom/tapjoy/internal/x4;->e:Ljava/lang/String;

    return-void
.end method
