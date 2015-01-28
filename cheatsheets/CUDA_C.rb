cheatsheet do
  title 'CUDA C'
  docset_file_name 'CUDA_C'
  keyword 'cuda'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Function Type Qualifiers'

    entry do
        notes "
        Function type qualifiers are used in function declarations and definitions.

        They specify where the functions can be called from and where they can be executed.

        Host is the CPU side, and device is the GPU side.
        "
    end

    entry do
        name "
        <font color='green'>`__device__`</font>
        "
        notes "
        Executed on the device. Callable from the device only.
        "
    end

    entry do
        name "
        <font color='green'>`__global__`</font>
        "
        notes "
        Executed on the device. Callable from the host or from the device
        for devices of compute capability 3.x or higher. Must have void return type.
        "
    end

    entry do
        name "
        <font color='green'>`__host__`</font>
        "
        notes "
        Executed on the host. Callable from the host only (equivalent to
        declaring the function without any qualifiers).
        "

    end
  end

  category do
    id 'Built-in Vector Types'

    entry do
        name 'Types'
        notes "
        <font color='blue'>`charX`</font>,
        <font color='blue'>`ucharX`</font>,
        <font color='blue'>`shortX`</font>,
        <font color='blue'>`intX`</font>,
        <font color='blue'>`uintX`</font>,
        <font color='blue'>`longX`</font>,
        <font color='blue'>`ulongX`</font>,
        <font color='blue'>`floatX`</font>,
        where `X = 1, 2, 3, or 4`.

        <font color='blue'>`doubleX`</font>,
        <font color='blue'>`longlongX`</font>,
        <font color='blue'>`ulonglongX`</font>,
        where `X = 1, or 2`.

        Note: <font color='blue'>`dim3`</font> is a <font color='blue'>`uint3`</font> with default components initalized to 1.
        "
    end

    entry do
        name 'Constructor Function'
        notes "
        <font color='green'>`make_<type name>`</font>
        constructs the built-in vector type with type specified by replacing
        `<type name>` with one of the types above.
        "
    end

    entry do
        name 'Component Access'
        notes "The 1st, 2nd, 3rd, and 4th components are
               accessible through the fields `x`, `y`, `z`, and `w`."
    end

    entry do
        name 'Example'
        notes "
        <code>
        <font color='blue'><i>int4</i></font> intVec =
        <font color='green'>make_int4</font>(0, 42, 3, 5)
        </code>
        creates an <font color='blue'>`int4`</font> vector typed variable named `intVec` with the given <font color='blue'>`int`</font> elements.
        `intVec.z` accesses its third element, `3`.
        "

    end
  end


  category do
    id 'Built-in Variables'

    entry do
        notes "
        Inside functions executed on the device (GPU), grid and block dimensions, and block and thread indices can be accessed using built-in variables listed below.
        "
    end

    entry do
        name "
        <font color='green'>`gridDim`</font>
        "
        notes "
        Dimensions of the grid (<font color='blue'>`dim3`</font>).
        "
    end

    entry do
        name "
        <font color='green'>`blockIdx`</font>
        "
        notes "
        Block index within the grid (<font color='blue'>`uint3`</font>).
        "
    end

    entry do
        name "
        <font color='green'>`blockDim`</font>
        "
        notes "
        Dimensions of the block (<font color='blue'>`dim3`</font>).
        "
    end

    entry do
        name "
        <font color='green'>`threadIdx`</font>
        "
        notes "
        Thread index within the block (<font color='blue'>`uint3`</font>).
        "
    end

    entry do
        name "
        <font color='green'>`warpSize`</font>
        "
        notes "
        Warp size in threads (<font color='blue'>`int`</font>).
        "
    end
  end


    category do
    id 'Device Memory Management'

    entry do
        name "
        Allocating memory
        "
        notes "
        <code>
        <font color='blue'><i>cudaError&#95;t</i></font>
        <font color='green'>cudaMalloc</font>(<font color='blue'><i>void</i></font> &#42;&#42;devPtr,
        <font color='blue'><i>size_t</i></font> size)
        </code>

        Allocates `size` bytes of linear memory on the device and points
        `devPtr` to the allocated memory.
        "
    end

    entry do
        name "
        Freeing memory
        "
        notes "
        <code>
        <font color='blue'><i>cudaError&#95;t</i></font>
        <font color='green'>cudaFree</font>(<font color='blue'><i>void</i></font> &#42;devPtr)
        </code>

        Frees the memory space pointed to by `devPtr`.
        "
    end

    entry do
        name "
        Transferring data
        "
        notes "
        <code>
        <font color='blue'><i>cudaError&#95;t</i></font>
        <font color='green'>cudaMemcpy</font>(<font color='blue'><i>void</i></font> &#42;dst,
        <font color='red'>const</font> <font color='blue'><i>void</i></font> &#42;src,
        <font color='blue'><i>size_t</i></font> count,
        <font color='blue'><i>cudaMemcpyKind</i></font> kind)
        </code>

        Copies `count` bytes of data from the memory area pointed to by `src` to the memory area pointed to by `dst`.
        The direction of copy is specified by `kind`, and is one of <font color='blue'>`cudaMemcpyHostToHost`</font>,
        <font color='blue'>`cudaMemcpyHostToDevice`</font>,
        <font color='blue'>`cudaMemcpyDeviceToHost`</font>, or
        <font color='blue'>`cudaMemcpyDeviceToDevice`</font>.
        "
    end
  end

  category do
    id 'Kernel Launch'
    entry do
        notes "
        A kernel function declared as <code><font color='green'>&#95;&#95;global&#95;&#95;</font>
        <font color='blue'><i>void</i></font> <font color='green'>Func</font>(<font color='blue'><i>float</i></font> *parameter) </code>
        can be called without the optional arguments as <code><font color='green'>Func</font><font color='purple'><<<</font>numBlocks, threadsPerBlock<font color='purple'>>>></font>(parameter)</code>
        or with the optional arguments as <code><font color='green'>Func</font><font color='purple'><<<</font>numBlocks, threadsPerBlock, Ns, S<font color='purple'>>>></font>(parameter)</code>.

        `numBlocks` is of type <font color='blue'>`dim3`</font> and specifies the number of blocks,

        `threadsPerBlock` is of type <font color='blue'>`dim3`</font> and specifies the number of threads per block,

        `Ns` is of type <font color='blue'>`size_t`</font> and specifies bytes in shared memory (optional),

        `S` is of type <font color='blue'>`cudaStream_t`</font> and specifies associated stream (optional).
        "
    end
  end

  notes <<-'END'
  * Based on [CUDA C Programming Guide](http://docs.nvidia.com/cuda/cuda-c-programming-guide/index.html) and
    [CUDA Runtime API](http://docs.nvidia.com/cuda/cuda-runtime-api/index.html).
  END
end
