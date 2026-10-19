###### Class kotlin.reflect.jvm.internal.KPropertyImplKt (kotlin.reflect.jvm.internal.KPropertyImplKt)
.class public final Lkotlin/reflect/jvm/internal/KPropertyImplKt;
.super Ljava/lang/Object;
.source "KPropertyImpl.kt"


# direct methods
.method private static final a(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/Caller;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KPropertyImpl$a<",
            "**>;Z)",
            "Lkotlin/reflect/jvm/internal/calls/Caller<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->c:Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$a;->a()Lkotlin/text/Regex;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object p0, Lkotlin/reflect/jvm/internal/calls/e;->a:Lkotlin/reflect/jvm/internal/calls/e;

    return-object p0

    :cond_17
    new-instance v0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;-><init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)V

    new-instance v1, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;-><init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;

    invoke-direct {v2, p0, p1, v1, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;-><init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;ZLkotlin/reflect/jvm/internal/KPropertyImplKt$b;Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;)V

    sget-object v1, Lkotlin/reflect/jvm/internal/r;->b:Lkotlin/reflect/jvm/internal/r;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/r;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Lkotlin/reflect/jvm/internal/c;

    move-result-object v1

    instance-of v3, v1, Lkotlin/reflect/jvm/internal/c$c;

    const/4 v4, 0x0

    if-eqz v3, :cond_177

    check-cast v1, Lkotlin/reflect/jvm/internal/c$c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/c$c;->f()Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;

    move-result-object v3

    if-eqz p1, :cond_4c

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->x()Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->t()Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    move-result-object p1

    goto :goto_58

    :cond_4c
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->y()Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->u()Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    move-result-object p1

    goto :goto_58

    :cond_57
    move-object p1, v4

    :goto_58
    if-eqz p1, :cond_7f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->x()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/c$c;->d()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/b;

    move-result-object v5

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->r()I

    move-result v6

    invoke-interface {v5, v6}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/b;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/c$c;->d()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/b;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->q()I

    move-result p1

    invoke-interface {v1, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/b;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v5, p1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_80

    :cond_7f
    move-object p1, v4

    :goto_80
    if-nez p1, :cond_127

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isUnderlyingPropertyOfInlineClass(Lkotlin/reflect/jvm/internal/impl/descriptors/k0;)Z

    move-result p1

    if-eqz p1, :cond_fc

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/q;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fc

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCallerKt;->toInlineClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_dc

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCallerKt;->getUnboxMethod(Ljava/lang/Class;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_dc

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_d5

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/d$a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBoundReceiver(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/d$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto/16 :goto_1b0

    :cond_d5
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/d$b;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/d$b;-><init>(Ljava/lang/reflect/Method;)V

    goto/16 :goto_1b0

    :cond_dc
    new-instance p1, Lkotlin/reflect/jvm/internal/o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Underlying property of inline class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should have a field"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/o;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fc
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->H()Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_10c

    invoke-virtual {v2, p1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a(Ljava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/calls/b;

    move-result-object v0

    goto/16 :goto_1b0

    :cond_10c
    new-instance p1, Lkotlin/reflect/jvm/internal/o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No accessors or field is found for property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/o;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_127
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_149

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_142

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBoundReceiver(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$h$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto/16 :goto_1b0

    :cond_142
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$d;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$h$d;-><init>(Ljava/lang/reflect/Method;)V

    goto/16 :goto_1b0

    :cond_149
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;->c()Z

    move-result v0

    if-eqz v0, :cond_161

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_15b

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$b;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$h$b;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_1b0

    :cond_15b
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$e;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$h$e;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_1b0

    :cond_161
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_171

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$c;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBoundReceiver(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$h$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_1b0

    :cond_171
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$f;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$h$f;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_1b0

    :cond_177
    instance-of v0, v1, Lkotlin/reflect/jvm/internal/c$a;

    if-eqz v0, :cond_186

    check-cast v1, Lkotlin/reflect/jvm/internal/c$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/c$a;->b()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {v2, p1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a(Ljava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/calls/b;

    move-result-object v0

    goto :goto_1b0

    :cond_186
    instance-of v0, v1, Lkotlin/reflect/jvm/internal/c$b;

    if-eqz v0, :cond_1d6

    if-eqz p1, :cond_193

    check-cast v1, Lkotlin/reflect/jvm/internal/c$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/c$b;->b()Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_19b

    :cond_193
    check-cast v1, Lkotlin/reflect/jvm/internal/c$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/c$b;->c()Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1bb

    :goto_19b
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_1ab

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBoundReceiver(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$h$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_1b0

    :cond_1ab
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$d;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$h$d;-><init>(Ljava/lang/reflect/Method;)V

    :goto_1b0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->C()Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p0, p1, v1, v4}, Lkotlin/reflect/jvm/internal/calls/InlineClassAwareCallerKt;->createInlineClassAwareCallerIfNeeded$default(Lkotlin/reflect/jvm/internal/calls/Caller;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    return-object p0

    :cond_1bb
    new-instance p0, Lkotlin/reflect/jvm/internal/o;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No source found for setter of Java method property: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/c$b;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d6
    instance-of v0, v1, Lkotlin/reflect/jvm/internal/c$d;

    if-eqz v0, :cond_254

    if-eqz p1, :cond_1e3

    check-cast v1, Lkotlin/reflect/jvm/internal/c$d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/c$d;->b()Lkotlin/reflect/jvm/internal/b$e;

    move-result-object p1

    goto :goto_1eb

    :cond_1e3
    check-cast v1, Lkotlin/reflect/jvm/internal/c$d;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/c$d;->c()Lkotlin/reflect/jvm/internal/b$e;

    move-result-object p1

    if-eqz p1, :cond_239

    :goto_1eb
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->x()Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/b$e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/b$e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_21e

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_218

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBoundReceiver(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lkotlin/reflect/jvm/internal/calls/b$h$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_21d

    :cond_218
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$h$d;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$h$d;-><init>(Ljava/lang/reflect/Method;)V

    :goto_21d
    return-object v0

    :cond_21e
    new-instance p1, Lkotlin/reflect/jvm/internal/o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No accessor found for property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/o;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_239
    new-instance p1, Lkotlin/reflect/jvm/internal/o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No setter found for property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/o;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_254
    new-instance p0, Lkotlin/k;

    invoke-direct {p0}, Lkotlin/k;-><init>()V

    throw p0
.end method

.method public static final synthetic access$computeCallerForAccessor(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/Caller;
    .registers 2

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->a(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isJvmFieldPropertyInCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Z
    .registers 1

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Z

    move-result p0

    return p0
.end method

.method private static final b(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Z
    .registers 5

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v0

    const-string v1, "containingDeclaration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    return v2

    :cond_11
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isInterface(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_25

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isAnnotationClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    :goto_23
    const/4 v2, 0x1

    goto :goto_36

    :cond_25
    :goto_25
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;

    if-eqz v0, :cond_36

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;->S0()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->isMovedFromInterfaceCompanion(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;)Z

    move-result p0

    if-eqz p0, :cond_36

    goto :goto_23

    :cond_36
    :goto_36
    return v2
.end method

.method public static final getBoundReceiver(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KPropertyImpl$a<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "$this$boundReceiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->D()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImplKt.a (kotlin.reflect.jvm.internal.KPropertyImplKt$a)
.class final Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;
.super Lkotlin/jvm/internal/t;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImplKt;->a(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/Caller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Z
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    invoke-static {}, Lkotlin/reflect/jvm/internal/UtilKt;->getJVM_STATIC()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->N(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImplKt.b (kotlin.reflect.jvm.internal.KPropertyImplKt$b)
.class final Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;
.super Lkotlin/jvm/internal/t;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImplKt;->a(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/Caller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Z
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.KPropertyImplKt.c (kotlin.reflect.jvm.internal.KPropertyImplKt$c)
.class final Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;
.super Lkotlin/jvm/internal/t;
.source "KPropertyImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KPropertyImplKt;->a(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;Z)Lkotlin/reflect/jvm/internal/calls/Caller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/reflect/Field;",
        "Lkotlin/reflect/jvm/internal/calls/b<",
        "+",
        "Ljava/lang/reflect/Field;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

.field final synthetic b:Z

.field final synthetic c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

.field final synthetic d:Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;ZLkotlin/reflect/jvm/internal/KPropertyImplKt$b;Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;)V
    .registers 5

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->b:Z

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->d:Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/calls/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lkotlin/reflect/jvm/internal/calls/b<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->D()Lkotlin/reflect/jvm/internal/KPropertyImpl;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl;->F()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->access$isJvmFieldPropertyInCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/y;)Z

    move-result v0

    if-nez v0, :cond_78

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_78

    :cond_20
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->d:Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$a;->c()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->b:Z

    if-eqz v0, :cond_42

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$f$b;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$f$b;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_bb

    :cond_3b
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$f$d;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$f$d;-><init>(Ljava/lang/reflect/Field;)V

    goto/16 :goto_bb

    :cond_42
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$g$b;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->c()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$g$b;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_bb

    :cond_56
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$g$d;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->c()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$g$d;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_bb

    :cond_62
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->b:Z

    if-eqz v0, :cond_6c

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$f$e;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$f$e;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_bb

    :cond_6c
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$g$e;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->c()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$g$e;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_bb

    :cond_78
    :goto_78
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->b:Z

    if-eqz v0, :cond_96

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_90

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$f$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBoundReceiver(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$f$a;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_bb

    :cond_90
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$f$c;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/calls/b$f$c;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_bb

    :cond_96
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$a;->B()Z

    move-result v0

    if-eqz v0, :cond_b0

    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$g$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->c()Z

    move-result v1

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a:Lkotlin/reflect/jvm/internal/KPropertyImpl$a;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->getBoundReceiver(Lkotlin/reflect/jvm/internal/KPropertyImpl$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lkotlin/reflect/jvm/internal/calls/b$g$a;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    goto :goto_bb

    :cond_b0
    new-instance v0, Lkotlin/reflect/jvm/internal/calls/b$g$c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->c:Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$b;->c()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/calls/b$g$c;-><init>(Ljava/lang/reflect/Field;Z)V

    :goto_bb
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/KPropertyImplKt$c;->a(Ljava/lang/reflect/Field;)Lkotlin/reflect/jvm/internal/calls/b;

    move-result-object p1

    return-object p1
.end method
