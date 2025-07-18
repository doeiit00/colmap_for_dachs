#ifndef COLMAP_UTIL_LOGGING_FIX_H_
#define COLMAP_UTIL_LOGGING_FIX_H_

#include <memory>

// Fix for THROW_CHECK_NOTNULL with shared_ptr
template<typename T>
std::shared_ptr<T> THROW_CHECK_NOTNULL_SHARED_PTR(std::shared_ptr<T> ptr) {
  if (!ptr) {
    throw std::runtime_error("Null shared_ptr");
  }
  return ptr;
}

#endif  // COLMAP_UTIL_LOGGING_FIX_H_
