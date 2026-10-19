###### Class com.tapjoy.internal.j9 (com.tapjoy.internal.j9)
.class public final Lcom/tapjoy/internal/j9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/y8;


# instance fields
.field public final b:Landroid/graphics/Rect;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public final h:Lcom/tapjoy/internal/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/y8;

    invoke-direct {v0}, Lcom/tapjoy/internal/y8;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/j9;->a:Lcom/tapjoy/internal/y8;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/b;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/j9;->b:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/tapjoy/internal/j9;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tapjoy/internal/j9;->d:Z

    iput-object p4, p0, Lcom/tapjoy/internal/j9;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/tapjoy/internal/j9;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/tapjoy/internal/j9;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/tapjoy/internal/j9;->h:Lcom/tapjoy/internal/a;

    return-void
.end method
