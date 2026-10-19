###### Class com.tapjoy.internal.g8 (com.tapjoy.internal.g8)
.class public final Lcom/tapjoy/internal/g8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/v4;


# instance fields
.field public final b:Lcom/tapjoy/internal/n3;

.field public final c:Landroid/graphics/Point;

.field public final d:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/v4;

    invoke-direct {v0}, Lcom/tapjoy/internal/v4;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/g8;->a:Lcom/tapjoy/internal/v4;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/n3;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/g8;->b:Lcom/tapjoy/internal/n3;

    iput-object p2, p0, Lcom/tapjoy/internal/g8;->c:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/tapjoy/internal/g8;->d:Landroid/graphics/Point;

    return-void
.end method
