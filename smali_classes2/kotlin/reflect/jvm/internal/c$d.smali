###### Class kotlin.reflect.jvm.internal.c.d (kotlin.reflect.jvm.internal.c$d)
.class public final Lkotlin/reflect/jvm/internal/c$d;
.super Lkotlin/reflect/jvm/internal/c;
.source "RuntimeTypeMapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/b$e;

.field private final b:Lkotlin/reflect/jvm/internal/b$e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/b$e;Lkotlin/reflect/jvm/internal/b$e;)V
    .registers 4

    const-string v0, "getterSignature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/c;-><init>(Lkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/c$d;->a:Lkotlin/reflect/jvm/internal/b$e;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/c$d;->b:Lkotlin/reflect/jvm/internal/b$e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/c$d;->a:Lkotlin/reflect/jvm/internal/b$e;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/b$e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/b$e;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/c$d;->a:Lkotlin/reflect/jvm/internal/b$e;

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/b$e;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/c$d;->b:Lkotlin/reflect/jvm/internal/b$e;

    return-object v0
.end method
