###### Class kotlin.jvm.internal.l.a (kotlin.jvm.internal.l$a)
.class Lkotlin/jvm/internal/l$a;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lkotlin/jvm/internal/l$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/jvm/internal/l$a;

    invoke-direct {v0}, Lkotlin/jvm/internal/l$a;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/l$a;->a:Lkotlin/jvm/internal/l$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic c()Lkotlin/jvm/internal/l$a;
    .registers 1

    sget-object v0, Lkotlin/jvm/internal/l$a;->a:Lkotlin/jvm/internal/l$a;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/l$a;->a:Lkotlin/jvm/internal/l$a;

    return-object v0
.end method
