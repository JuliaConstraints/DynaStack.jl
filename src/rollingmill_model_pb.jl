# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const MillTypes = (;[
    Symbol("A") => Int32(0),
    Symbol("B") => Int32(1),
]...)

const MoveType = (;[
    Symbol("MoveToPickup") => Int32(0),
    Symbol("PickupAndDropoff") => Int32(1),
]...)

const StackTypes = (;[
    Symbol("ArrivalStack") => Int32(0),
    Symbol("ShuffleBuffer") => Int32(1),
    Symbol("SortedBuffer") => Int32(2),
    Symbol("HandoverStack") => Int32(3),
]...)

mutable struct CraneScheduleActivity <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CraneScheduleActivity(; kwargs...)
        obj = new(meta(CraneScheduleActivity), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct CraneScheduleActivity

const __meta_CraneScheduleActivity = Ref{ProtoMeta}()

function meta(::Type{CraneScheduleActivity})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CraneScheduleActivity)
            __meta_CraneScheduleActivity[] = target = ProtoMeta(CraneScheduleActivity)
            allflds = Pair{Symbol,Union{Type,String}}[:MoveId => Int32, :CraneId => Int32, :Priority => Int32]
            meta(target, CraneScheduleActivity, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CraneScheduleActivity[]
    end
end

function Base.getproperty(obj::CraneScheduleActivity, name::Symbol)
    if name === :MoveId
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :CraneId
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Priority
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct CraneSchedule <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CraneSchedule(; kwargs...)
        obj = new(meta(CraneSchedule), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct CraneSchedule

const __meta_CraneSchedule = Ref{ProtoMeta}()

function meta(::Type{CraneSchedule})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CraneSchedule)
            __meta_CraneSchedule[] = target = ProtoMeta(CraneSchedule)
            allflds = Pair{Symbol,Union{Type,String}}[:ScheduleNr => Int32, :Activities => Base.Vector{CraneScheduleActivity}]
            meta(target, CraneSchedule, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CraneSchedule[]
    end
end

function Base.getproperty(obj::CraneSchedule, name::Symbol)
    if name === :ScheduleNr
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Activities
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{CraneScheduleActivity}
    else
        getfield(obj, name)
    end
end

mutable struct Performance <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Performance(; kwargs...)
        obj = new(meta(Performance), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Performance

const __meta_Performance = Ref{ProtoMeta}()

function meta(::Type{Performance})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Performance)
            __meta_Performance[] = target = ProtoMeta(Performance)
            allflds = Pair{Symbol,Union{Type,String}}[:CraneManipulations => Int32, :ServiceLevelMean => Float64, :LeadTimeMean => Float64, :DeliveredBlocks => Int32, :TotalBlocksOnTime => Int32, :TardinessMean => Float64, :ShuffleBufferUtilizationMean => Float64, :SortedBufferUtilizationMean => Float64, :ShuffleCraneUtilizationMean => Float64, :HandoverCraneUtilizationMean => Float64, :MillAUtilizationMean => Float64, :MillBUtilizationMean => Float64, :RollingProgramMessups => Int32, :BlockedMillTime => Float64]
            meta(target, Performance, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Performance[]
        end
end

function Base.getproperty(obj::Performance, name::Symbol)
    if name === :CraneManipulations
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ServiceLevelMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :LeadTimeMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :DeliveredBlocks
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :TotalBlocksOnTime
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :TardinessMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :ShuffleBufferUtilizationMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :SortedBufferUtilizationMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :ShuffleCraneUtilizationMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :HandoverCraneUtilizationMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :MillAUtilizationMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :MillBUtilizationMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :RollingProgramMessups
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :BlockedMillTime
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct TimeStamp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TimeStamp(; kwargs...)
        obj = new(meta(TimeStamp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct TimeStamp

const __meta_TimeStamp = Ref{ProtoMeta}()

function meta(::Type{TimeStamp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TimeStamp)
            __meta_TimeStamp[] = target = ProtoMeta(TimeStamp)
            allflds = Pair{Symbol,Union{Type,String}}[:MilliSeconds => Int64]
            meta(target, TimeStamp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TimeStamp[]
    end
end

function Base.getproperty(obj::TimeStamp, name::Symbol)
    if name === :MilliSeconds
    return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct CraneMove <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CraneMove(; kwargs...)
        obj = new(meta(CraneMove), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct CraneMove

const __meta_CraneMove = Ref{ProtoMeta}()

function meta(::Type{CraneMove})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CraneMove)
            __meta_CraneMove[] = target = ProtoMeta(CraneMove)
            fnum = Int[1,2,3,4,7,8,9,10,11]
            pack = Symbol[:ProtobufPredecessorIds]
            allflds = Pair{Symbol,Union{Type,String}}[:Id => Int32, :_Type => Int32, :PickupLocationId => Int32, :DropoffLocationId => Int32, :Amount => Int32, :ReleaseTime => TimeStamp, :DueDate => TimeStamp, :RequiredCraneId => Int32, :ProtobufPredecessorIds => Base.Vector{Int32}]
            meta(target, CraneMove, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CraneMove[]
    end
end

function Base.getproperty(obj::CraneMove, name::Symbol)
    if name === :Id
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :_Type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :PickupLocationId
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :DropoffLocationId
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Amount
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ReleaseTime
        return (obj.__protobuf_jl_internal_values[name])::TimeStamp
    elseif name === :DueDate
        return (obj.__protobuf_jl_internal_values[name])::TimeStamp
    elseif name === :RequiredCraneId
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ProtobufPredecessorIds
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    else
        getfield(obj, name)
    end
end

    mutable struct Block <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Block(; kwargs...)
        obj = new(meta(Block), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Block

const __meta_Block = Ref{ProtoMeta}()

function meta(::Type{Block})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Block)
            __meta_Block[] = target = ProtoMeta(Block)
            allflds = Pair{Symbol,Union{Type,String}}[:Id => Int32, :Sequence => Int32, :_Type => Int32, :ProgramId => Int32, :Arrived => TimeStamp, :Rolled => Bool]
            meta(target, Block, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Block[]
    end
end

function Base.getproperty(obj::Block, name::Symbol)
    if name === :Id
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Sequence
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :_Type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ProgramId
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Arrived
        return (obj.__protobuf_jl_internal_values[name])::TimeStamp
    elseif name === :Rolled
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct MoveRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MoveRequest(; kwargs...)
        obj = new(meta(MoveRequest), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
        fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct MoveRequest

const __meta_MoveRequest = Ref{ProtoMeta}()

function meta(::Type{MoveRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MoveRequest)
            __meta_MoveRequest[] = target = ProtoMeta(MoveRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:Id => Int32, :TargetLocationId => Int32, :BlockId => Int32, :DueDate => TimeStamp]
            meta(target, MoveRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MoveRequest[]
    end
end

function Base.getproperty(obj::MoveRequest, name::Symbol)
    if name === :Id
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :TargetLocationId
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :BlockId
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :DueDate
        return (obj.__protobuf_jl_internal_values[name])::TimeStamp
    else
        getfield(obj, name)
    end
end

mutable struct PlannedCraneMoves <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PlannedCraneMoves(; kwargs...)
        obj = new(meta(PlannedCraneMoves), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct PlannedCraneMoves

const __meta_PlannedCraneMoves = Ref{ProtoMeta}()

function meta(::Type{PlannedCraneMoves})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PlannedCraneMoves)
            __meta_PlannedCraneMoves[] = target = ProtoMeta(PlannedCraneMoves)
            allflds = Pair{Symbol,Union{Type,String}}[:SequenceNr => Int32, :Moves => Base.Vector{CraneMove}]
            meta(target, PlannedCraneMoves, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PlannedCraneMoves[]
    end
end

function Base.getproperty(obj::PlannedCraneMoves, name::Symbol)
    if name === :SequenceNr
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Moves
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{CraneMove}
    else
        getfield(obj, name)
        end
end

mutable struct Stack <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Stack(; kwargs...)
        obj = new(meta(Stack), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Stack

const __meta_Stack = Ref{ProtoMeta}()

function meta(::Type{Stack})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Stack)
            __meta_Stack[] = target = ProtoMeta(Stack)
            allflds = Pair{Symbol,Union{Type,String}}[:BottomToTop => Base.Vector{Block}]
            meta(target, Stack, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Stack[]
    end
end

function Base.getproperty(obj::Stack, name::Symbol)
    if name === :BottomToTop
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Block}
    else
        getfield(obj, name)
    end
end

mutable struct Location <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Location(; kwargs...)
        obj = new(meta(Location), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Location

const __meta_Location = Ref{ProtoMeta}()

function meta(::Type{Location})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Location)
            __meta_Location[] = target = ProtoMeta(Location)
            allflds = Pair{Symbol,Union{Type,String}}[:Id => Int32, :GirderPosition => Float64, :MaxHeight => Int32, :Stack => Stack, :_Type => Int32, :MillType => Int32]
            meta(target, Location, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Location[]
    end
end

function Base.getproperty(obj::Location, name::Symbol)
    if name === :Id
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :GirderPosition
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :MaxHeight
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Stack
        return (obj.__protobuf_jl_internal_values[name])::Stack
    elseif name === :_Type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :MillType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct Arrival <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Arrival(; kwargs...)
        obj = new(meta(Arrival), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Arrival

const __meta_Arrival = Ref{ProtoMeta}()

function meta(::Type{Arrival})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Arrival)
            __meta_Arrival[] = target = ProtoMeta(Arrival)
            allflds = Pair{Symbol,Union{Type,String}}[:Vehicle => Int32, :Load => Stack, :ArrivalEstimate => TimeStamp]
            meta(target, Arrival, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Arrival[]
    end
end

function Base.getproperty(obj::Arrival, name::Symbol)
    if name === :Vehicle
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Load
        return (obj.__protobuf_jl_internal_values[name])::Stack
    elseif name === :ArrivalEstimate
        return (obj.__protobuf_jl_internal_values[name])::TimeStamp
    else
        getfield(obj, name)
    end
end

mutable struct Crane <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Crane(; kwargs...)
        obj = new(meta(Crane), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Crane

const __meta_Crane = Ref{ProtoMeta}()

function meta(::Type{Crane})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Crane)
            __meta_Crane[] = target = ProtoMeta(Crane)
allflds = Pair{Symbol,Union{Type,String}}[:Id => Int32, :Load => Stack, :GirderPosition => Float64, :HoistLevel => Float64, :CraneCapacity => Int32, :Width => Float64, :MinPosition => Float64, :MaxPosition => Float64]
            meta(target, Crane, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Crane[]
    end
end

function Base.getproperty(obj::Crane, name::Symbol)
    if name === :Id
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Load
        return (obj.__protobuf_jl_internal_values[name])::Stack
    elseif name === :GirderPosition
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :HoistLevel
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :CraneCapacity
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Width
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :MinPosition
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :MaxPosition
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct Uncertainties <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}

    function Uncertainties(; kwargs...)
        obj = new(meta(Uncertainties), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Uncertainties

const __meta_Uncertainties = Ref{ProtoMeta}()

function meta(::Type{Uncertainties})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Uncertainties)
            __meta_Uncertainties[] = target = ProtoMeta(Uncertainties)
pack = Symbol[:ArrivalIntervals,:CraneMoveTimes,:MillBlockIntervals]
            allflds = Pair{Symbol,Union{Type,String}}[:ArrivalIntervals => Base.Vector{Float64}, :CraneMoveTimes => Base.Vector{Float64}, :MillBlockIntervals => Base.Vector{Float64}]
            meta(target, Uncertainties, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Uncertainties[]
    end
end

function Base.getproperty(obj::Uncertainties, name::Symbol)
    if name === :ArrivalIntervals
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :CraneMoveTimes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :MillBlockIntervals
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    else
        getfield(obj, name)
    end
end

mutable struct World <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

        function World(; kwargs...)
        obj = new(meta(World), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct World

const __meta_World = Ref{ProtoMeta}()

function meta(::Type{World})
    ProtoBuf.metalock() do
        if !isassigned(__meta_World)
            __meta_World[] = target = ProtoMeta(World)
            allflds = Pair{Symbol,Union{Type,String}}[:Now => TimeStamp, :Height => Int32, :Width => Float64, :Locations => Base.Vector{Location}, :BlocksAtSlabYard => Base.Vector{Block}, :ArrivalsFromSlabYard => Base.Vector{Arrival}, :CraneMoves => PlannedCraneMoves, :MoveRequests => Base.Vector{MoveRequest}, :CraneSchedule => CraneSchedule, :ShuffleCrane => Crane, :HandoverCrane => Crane, :KPIs => Performance, :ObservationData => Uncertainties]
            meta(target, World, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_World[]
    end
end

function Base.getproperty(obj::World, name::Symbol)
    if name === :Now
        return (obj.__protobuf_jl_internal_values[name])::TimeStamp
    elseif name === :Height
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Width
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :Locations
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Location}
    elseif name === :BlocksAtSlabYard
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Block}
    elseif name === :ArrivalsFromSlabYard
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Arrival}
    elseif name === :CraneMoves
        return (obj.__protobuf_jl_internal_values[name])::PlannedCraneMoves
    elseif name === :MoveRequests
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{MoveRequest}
    elseif name === :CraneSchedule
        return (obj.__protobuf_jl_internal_values[name])::CraneSchedule
    elseif name === :ShuffleCrane
        return (obj.__protobuf_jl_internal_values[name])::Crane
    elseif name === :HandoverCrane
        return (obj.__protobuf_jl_internal_values[name])::Crane
    elseif name === :KPIs
        return (obj.__protobuf_jl_internal_values[name])::Performance
    elseif name === :ObservationData
        return (obj.__protobuf_jl_internal_values[name])::Uncertainties
    else
        getfield(obj, name)
    end
end

export MillTypes, MoveType, StackTypes, Arrival, Block, Crane, CraneMove, CraneSchedule, CraneScheduleActivity, Location, MoveRequest, Performance, PlannedCraneMoves, Stack, TimeStamp, Uncertainties, World
