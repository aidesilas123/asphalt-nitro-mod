###### Class com.ironsource.e9.c (com.ironsource.e9$c)
.class final Lcom/ironsource/e9$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/e9;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/ironsource/o3;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/ironsource/o3;",
        "a",
        "()Lcom/ironsource/o3;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/e9$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ironsource/e9$c;

    invoke-direct {v0}, Lcom/ironsource/e9$c;-><init>()V

    sput-object v0, Lcom/ironsource/e9$c;->a:Lcom/ironsource/e9$c;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/o3;
    .registers 2

    new-instance v0, Lcom/ironsource/o3;

    invoke-direct {v0}, Lcom/ironsource/o3;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/ironsource/e9$c;->a()Lcom/ironsource/o3;

    move-result-object v0

    return-object v0
.end method
